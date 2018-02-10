.class Lokhttp3/c$b;
.super Lokhttp3/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lokhttp3/internal/a/d$c;

.field private final b:Lokio/e;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/internal/a/d$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Lokhttp3/internal/a/d$c;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;

    .prologue
    .line 743
    invoke-direct {p0}, Lokhttp3/ad;-><init>()V

    .line 744
    iput-object p1, p0, Lokhttp3/c$b;->a:Lokhttp3/internal/a/d$c;

    .line 745
    iput-object p2, p0, Lokhttp3/c$b;->c:Ljava/lang/String;

    .line 746
    iput-object p3, p0, Lokhttp3/c$b;->d:Ljava/lang/String;

    .line 748
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lokhttp3/internal/a/d$c;->a(I)Lokio/x;

    move-result-object v0

    .line 749
    .local v0, "source":Lokio/x;
    new-instance v1, Lokhttp3/c$b$1;

    invoke-direct {v1, p0, v0, p1}, Lokhttp3/c$b$1;-><init>(Lokhttp3/c$b;Lokio/x;Lokhttp3/internal/a/d$c;)V

    invoke-static {v1}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/c$b;->b:Lokio/e;

    .line 755
    return-void
.end method

.method static synthetic a(Lokhttp3/c$b;)Lokhttp3/internal/a/d$c;
    .locals 1
    .param p0, "x0"    # Lokhttp3/c$b;

    .prologue
    .line 736
    iget-object v0, p0, Lokhttp3/c$b;->a:Lokhttp3/internal/a/d$c;

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 763
    :try_start_0
    iget-object v1, p0, Lokhttp3/c$b;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/c$b;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 765
    :cond_0
    :goto_0
    return-wide v2

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public contentType()Lokhttp3/w;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lokhttp3/c$b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/c$b;->c:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public source()Lokio/e;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lokhttp3/c$b;->b:Lokio/e;

    return-object v0
.end method
