.class Lcom/squareup/okhttp/c$b;
.super Lcom/squareup/okhttp/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/a$c;

.field private final b:Lokio/e;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/a$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/squareup/okhttp/internal/a$c;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/squareup/okhttp/y;-><init>()V

    .line 679
    iput-object p1, p0, Lcom/squareup/okhttp/c$b;->a:Lcom/squareup/okhttp/internal/a$c;

    .line 680
    iput-object p2, p0, Lcom/squareup/okhttp/c$b;->c:Ljava/lang/String;

    .line 681
    iput-object p3, p0, Lcom/squareup/okhttp/c$b;->d:Ljava/lang/String;

    .line 683
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/a$c;->a(I)Lokio/x;

    move-result-object v0

    .line 684
    .local v0, "source":Lokio/x;
    new-instance v1, Lcom/squareup/okhttp/c$b$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/squareup/okhttp/c$b$1;-><init>(Lcom/squareup/okhttp/c$b;Lokio/x;Lcom/squareup/okhttp/internal/a$c;)V

    invoke-static {v1}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/c$b;->b:Lokio/e;

    .line 690
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/c$b;)Lcom/squareup/okhttp/internal/a$c;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/c$b;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/squareup/okhttp/c$b;->a:Lcom/squareup/okhttp/internal/a$c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/r;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/squareup/okhttp/c$b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/c$b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/r;->a(Ljava/lang/String;)Lcom/squareup/okhttp/r;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/c$b;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/c$b;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 700
    :cond_0
    :goto_0
    return-wide v2

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public c()Lokio/e;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/squareup/okhttp/c$b;->b:Lokio/e;

    return-object v0
.end method
