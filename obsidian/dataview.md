# Dataview Query Examples

Below are sample queries using the Dataview plugin to surface structured data from your vault.

---

## 1. List All Tasks

```dataview
table file.link as "Note", text as "Task", status as "Status"
from ""
where contains(text, "- [ ]") or contains(text, "- [x]")
sort file.name asc
```

---

## 2. Tasks by Tag

```dataview
task from "01 Project Planning"
where contains(tags, "task")
group by file.link
```

---

## 3. Notes Created This Week

```dataview
table file.link as "Note", file.ctime as "Created"
from ""
where date(file.ctime) >= date(now) - dur(7 days)
sort file.ctime desc
```

---

## 4. Meeting Notes Summary

```dataview
list from "04 Meeting Minutes"
where contains(tags, "meeting")
sort file.name asc
```

---

## 5. Project Planning Table

```dataview
table c as "Category", length(rows) as "Count"
from "01 Project Planning"
group by Category
```

*Note*: Ensure each planning note includes a `Category::` field in YAML frontmatter.
