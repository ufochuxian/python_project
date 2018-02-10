.class public Lcom/jiliguala/niuwa/logic/db/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/jiliguala/niuwa/logic/db/a/c;


# static fields
.field public static final a:Ljava/lang/String; = "audio_recent_play"

.field public static final b:Landroid/net/Uri;

.field public static final c:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.jiligua.la.audio_recent_play"

.field public static final d:Ljava/lang/String; = "vnd.android.cursor.item/vnd.jiligua.la.audio_recent_play"

.field public static final e:Ljava/lang/String; = "resId"

.field public static final f:Ljava/lang/String; = "blob"

.field public static final g:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS audio_recent_play ( _id INTEGER PRIMARY KEY AUTOINCREMENT, resId TEXT, blob BLOB);"

.field public static final h:Ljava/lang/String; = "_id DESC"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://com.jiliguala.niuwa.provider.ResourceContentProvider/audio_recent_play"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/db/a/b;->b:Landroid/net/Uri;

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
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 60
    const-string v1, "resId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a/b;->i:Ljava/lang/String;

    .line 61
    const-string v1, "blob"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 62
    .local v0, "data":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/db/a/b;->j:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 64
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 0
    .param p1, "metaData"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/a/b;->j:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/a/b;->i:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public b()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/a/b;->j:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    return-object v0
.end method

.method public d()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 51
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "resId"

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/db/a/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/db/a/b;->j:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "json":Ljava/lang/String;
    const-string v2, "blob"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 55
    return-object v1
.end method
