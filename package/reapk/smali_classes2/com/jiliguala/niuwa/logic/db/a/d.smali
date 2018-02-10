.class public Lcom/jiliguala/niuwa/logic/db/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/jiliguala/niuwa/logic/db/a/c;


# static fields
.field public static final a:Ljava/lang/String; = "local_storage"

.field public static final b:Landroid/net/Uri;

.field public static final c:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.jiligua.la.local_storage"

.field public static final d:Ljava/lang/String; = "vnd.android.cursor.item/vnd.jiligua.la.local_storage"

.field public static final e:Ljava/lang/String; = "key"

.field public static final f:Ljava/lang/String; = "value"

.field public static final g:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS local_storage ( _id INTEGER PRIMARY KEY AUTOINCREMENT, key TEXT, value TEXT);"


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "content://com.jiliguala.niuwa.provider.ResourceContentProvider/local_storage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/db/a/d;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 57
    const-string v0, "key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a/d;->h:Ljava/lang/String;

    .line 58
    const-string v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a/d;->i:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/a/d;->h:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/a/d;->i:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public d()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "key"

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "value"

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/a/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-object v0
.end method
