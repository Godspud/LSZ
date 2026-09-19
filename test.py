import sqlite3
import pathlib
from pathlib import Path

def read(db, path: str):
    out = db.execute("""SELECT mtime, size, checked_at FROM dirsize_cache WHERE path = ?""", (path,))
    out = list(out.fetchone())
    if not out:
        out = []
    out.insert(0, path)
    print(out)

home = pathlib.Path.home()
try:
    Path(f"{home}/.cache/LSZ/LSZ.sqlite").touch(exist_ok=True)
except FileNotFoundError:
    Path(f"{home}/.cache/LSZ").mkdir(exist_ok=True, parents=True)
    Path(f"{home}/.cache/LSZ/LSZ.sqlite").touch(exist_ok=True)
database = sqlite3.connect(f"{home}/.cache/LSZ/LSZ.sqlite")
database.execute("""
CREATE TABLE IF NOT EXISTS dirsize_cache (
    path TEXT PRIMARY KEY,
    mtime REAL NOT NULL,
    size INTEGER NOT NULL,
    checked_at REAL NOT NULL
);
""")
database.execute(
    """INSERT OR REPLACE INTO dirsize_cache (path, size, mtime, checked_at) VALUES (?, ?, ?, ?)""",
    ("test.txt", 1, 1, 0),
)
read(database, "test.txt")
database.commit()
database.close()
