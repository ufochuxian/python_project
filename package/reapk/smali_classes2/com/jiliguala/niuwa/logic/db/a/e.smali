.class public Lcom/jiliguala/niuwa/logic/db/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/jiliguala/niuwa/logic/db/a/c;


# static fields
.field public static final a:Ljava/lang/String; = "offline_res"

.field public static final b:Landroid/net/Uri;

.field public static final c:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.jiligua.la.offline_res"

.field public static final d:Ljava/lang/String; = "vnd.android.cursor.item/vnd.jiligua.la.offline_res"

.field public static final e:Ljava/lang/String; = "resId"

.field public static final f:Ljava/lang/String; = "download_status"

.field public static final g:Ljava/lang/String; = "type"

.field public static final h:Ljava/lang/String; = "blob"

.field public static final i:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS offline_res ( _id INTEGER PRIMARY KEY AUTOINCREMENT, resId TEXT, download_status TEXT, type INTEGER, blob BLOB);"

.field public static final j:Ljava/lang/String; = "_id DESC"

.field public static final k:Ljava/lang/String; = "_id ASC"

.field private static final l:Ljava/lang/String;


# instance fields
.field private m:Ljava/lang/String;

.field private n:I

.field private o:Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "content://com.jiliguala.niuwa.provider.ResourceContentProvider/offline_res"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    .line 33
    const-class v0, Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/db/a/e;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->n:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "downloadStatus"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->n:I

    .line 53
    return-void
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 86
    const-string v2, "resId"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->m:Ljava/lang/String;

    .line 87
    const-string v2, "download_status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "status":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->n:I

    .line 91
    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->p:I

    .line 93
    const-string v2, "blob"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 94
    .local v0, "data":[B
    iget v2, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->p:I

    const/16 v3, 0x5001

    if-ne v2, v3, :cond_1

    .line 95
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-class v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    iput-object v2, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->o:Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget v2, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->p:I

    const/16 v3, 0x5002

    if-ne v2, v3, :cond_0

    .line 97
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-class v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    iput-object v2, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->o:Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    goto :goto_0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V
    .locals 0
    .param p1, "metaData"    # Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->o:Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->m:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->n:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->p:I

    .line 69
    return-void
.end method

.method public c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->o:Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    return-object v0
.end method

.method public d()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 73
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "resId"

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "download_status"

    iget v3, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v2, "type"

    iget v3, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->o:Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "json":Ljava/lang/String;
    const-string v2, "blob"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 81
    return-object v1
.end method

.method public e()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/jiliguala/niuwa/logic/db/a/e;->p:I

    return v0
.end method
