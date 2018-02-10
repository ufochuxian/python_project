.class public Lcom/mob/tools/c/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/mob/tools/c/m$a;->a:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/mob/tools/c/m$a;->b:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/c/m$a;->d:Ljava/util/LinkedHashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/c/m$a;->e:Ljava/util/HashMap;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/c/m$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/mob/tools/c/m$1;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/c/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v12, 0x0

    .line 117
    iget-object v11, p0, Lcom/mob/tools/c/m$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v11, :cond_7

    .line 118
    new-instance v4, Ljava/io/File;

    iget-object v11, p0, Lcom/mob/tools/c/m$a;->a:Ljava/lang/String;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, "file":Ljava/io/File;
    invoke-static {v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    iput-object v11, p0, Lcom/mob/tools/c/m$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 121
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "select count(*) from sqlite_master where type =\'table\' and name =\'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/mob/tools/c/m$a;->b:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "\' "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "sql":Ljava/lang/String;
    iget-object v11, p0, Lcom/mob/tools/c/m$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11, v9, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 123
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 124
    .local v8, "shouldCreate":Z
    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 126
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lez v11, :cond_0

    .line 127
    const/4 v8, 0x0

    .line 130
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_1
    if-eqz v8, :cond_7

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v11, "create table  "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/mob/tools/c/m$a;->b:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v11, p0, Lcom/mob/tools/c/m$a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 137
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "field":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 139
    .local v10, "type":Ljava/lang/String;
    iget-object v11, p0, Lcom/mob/tools/c/m$a;->e:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 140
    .local v5, "notNull":Z
    iget-object v11, p0, Lcom/mob/tools/c/m$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 141
    .local v6, "primary":Z
    if-eqz v6, :cond_2

    iget-boolean v0, p0, Lcom/mob/tools/c/m$a;->g:Z

    .line 142
    .local v0, "autoincrement":Z
    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    if-eqz v5, :cond_3

    const-string v11, " not null"

    :goto_2
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    if-eqz v6, :cond_4

    const-string v11, " primary key"

    :goto_3
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    if-eqz v0, :cond_5

    const-string v11, " autoincrement,"

    :goto_4
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "autoincrement":Z
    :cond_2
    move v0, v12

    .line 141
    goto :goto_1

    .line 143
    .restart local v0    # "autoincrement":Z
    :cond_3
    const-string v11, ""

    goto :goto_2

    .line 144
    :cond_4
    const-string v11, ""

    goto :goto_3

    .line 145
    :cond_5
    const-string v11, ","

    goto :goto_4

    .line 147
    .end local v0    # "autoincrement":Z
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "field":Ljava/lang/String;
    .end local v5    # "notNull":Z
    .end local v6    # "primary":Z
    .end local v10    # "type":Ljava/lang/String;
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const-string v13, ");"

    invoke-virtual {v7, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v11, p0, Lcom/mob/tools/c/m$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "shouldCreate":Z
    .end local v9    # "sql":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/c/m$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/c/m$a;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mob/tools/c/m$a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/mob/tools/c/m$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/c/m$a;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mob/tools/c/m$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mob/tools/c/m$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mob/tools/c/m$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/c/m$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 158
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/mob/tools/c/m$a;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/c/m$a;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mob/tools/c/m$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mob/tools/c/m$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mob/tools/c/m$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/c/m$a;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mob/tools/c/m$a;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Ljava/lang/String;
    .param p3, "notNull"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mob/tools/c/m$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mob/tools/c/m$a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/mob/tools/c/m$a;->e:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "autoincrement"    # Z

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mob/tools/c/m$a;->f:Ljava/lang/String;

    .line 113
    iput-boolean p2, p0, Lcom/mob/tools/c/m$a;->g:Z

    .line 114
    return-void
.end method
