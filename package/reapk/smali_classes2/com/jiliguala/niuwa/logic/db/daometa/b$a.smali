.class public Lcom/jiliguala/niuwa/logic/db/daometa/b$a;
.super Lcom/jiliguala/niuwa/logic/db/daometa/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/db/daometa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/b$b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/logic/db/daometa/b;->b(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/db/daometa/b$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 61
    return-void
.end method
