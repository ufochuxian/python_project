.class public Lcom/jiliguala/niuwa/logic/db/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/jiliguala/niuwa/logic/db/a/c;


# static fields
.field public static final a:Ljava/lang/String; = "video_fav"

.field public static final b:Landroid/net/Uri;

.field public static final c:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.jiligua.la.video_fav"

.field public static final d:Ljava/lang/String; = "vnd.android.cursor.item/vnd.jiligua.la.video_fav"

.field public static final e:Ljava/lang/String; = "resId"

.field public static final f:Ljava/lang/String; = "blob"

.field public static final g:Ljava/lang/String; = "babyId"

.field public static final h:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS video_fav ( _id INTEGER PRIMARY KEY AUTOINCREMENT, babyId TEXT, resId TEXT, blob BLOB);"

.field public static final i:Ljava/lang/String; = "_id DESC"


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "content://com.jiliguala.niuwa.provider.ResourceContentProvider/video_fav"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/db/a/g;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 72
    const-string v1, "resId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->j:Ljava/lang/String;

    .line 74
    const-string v1, "babyId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->k:Ljava/lang/String;

    .line 75
    const-string v1, "blob"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 76
    .local v0, "data":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->l:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .line 77
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V
    .locals 0
    .param p1, "metaData"    # Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->l:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .line 57
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "babyId"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->k:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->j:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->l:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    return-object v0
.end method

.method public d()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 61
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "resId"

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "babyId"

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/a/g;->l:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "json":Ljava/lang/String;
    const-string v2, "blob"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 67
    return-object v1
.end method
