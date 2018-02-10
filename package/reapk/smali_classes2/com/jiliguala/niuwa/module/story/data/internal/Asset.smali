.class public Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CDN_STUB:Landroid/net/Uri;

.field public static final COVER_ART_STUB:Landroid/net/Uri;

.field public static final COVER_AUDIO_STUB:Landroid/net/Uri;

.field public static final PAGE_ART_STUB:Landroid/net/Uri;

.field public static final PAGE_AUDIO_STUB:Landroid/net/Uri;

.field public static sAssetCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/module/story/data/internal/Asset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mHash:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "http://cdn.farfaria.com/uploads/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->CDN_STUB:Landroid/net/Uri;

    .line 17
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->CDN_STUB:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "story/cover_art"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->COVER_ART_STUB:Landroid/net/Uri;

    .line 18
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->CDN_STUB:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "story/cover_voice_over"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->COVER_AUDIO_STUB:Landroid/net/Uri;

    .line 19
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->CDN_STUB:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "page/background_image"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->PAGE_ART_STUB:Landroid/net/Uri;

    .line 20
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->CDN_STUB:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "page/voice_over"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->PAGE_AUDIO_STUB:Landroid/net/Uri;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->sAssetCache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->mHash:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->mUrl:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static make(Landroid/net/Uri;)Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 1
    .param p0, "url"    # Landroid/net/Uri;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->make(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    return-object v0
.end method

.method public static make(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/story/helpers/StringHashingHelper;->sha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "hash":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->sAssetCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .line 46
    .local v0, "asset":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .end local v0    # "asset":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .restart local v0    # "asset":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->sAssetCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->mUrl:Ljava/lang/String;

    return-object v0
.end method
