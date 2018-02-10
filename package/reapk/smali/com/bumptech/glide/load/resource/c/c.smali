.class public Lcom/bumptech/glide/load/resource/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/c/c$a;


# instance fields
.field private b:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/resource/c/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/bumptech/glide/load/resource/c/c$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/c/c$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/c/c;->a:Lcom/bumptech/glide/load/resource/c/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/bumptech/glide/load/resource/c/c;, "Lcom/bumptech/glide/load/resource/c/c<TT;>;"
    .local p1, "streamDecoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Ljava/io/InputStream;TT;>;"
    sget-object v0, Lcom/bumptech/glide/load/resource/c/c;->a:Lcom/bumptech/glide/load/resource/c/c$a;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/c/c;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/resource/c/c$a;)V

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/resource/c/c$a;)V
    .locals 0
    .param p2, "fileOpener"    # Lcom/bumptech/glide/load/resource/c/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;",
            "Lcom/bumptech/glide/load/resource/c/c$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/bumptech/glide/load/resource/c/c;, "Lcom/bumptech/glide/load/resource/c/c<TT;>;"
    .local p1, "streamDecoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Ljava/io/InputStream;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/c/c;->b:Lcom/bumptech/glide/load/d;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/c/c;->c:Lcom/bumptech/glide/load/resource/c/c$a;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/k;
    .locals 4
    .param p1, "source"    # Ljava/io/File;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/load/resource/c/c;, "Lcom/bumptech/glide/load/resource/c/c<TT;>;"
    const/4 v0, 0x0

    .line 36
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 38
    .local v1, "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/c/c;->c:Lcom/bumptech/glide/load/resource/c/c$a;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/resource/c/c$a;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/c/c;->b:Lcom/bumptech/glide/load/d;

    invoke-interface {v2, v0, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 41
    if-eqz v0, :cond_0

    .line 43
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-object v1

    .line 41
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 43
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 46
    :cond_1
    :goto_1
    throw v2

    .line 44
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/k;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/bumptech/glide/load/resource/c/c;, "Lcom/bumptech/glide/load/resource/c/c<TT;>;"
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/c/c;->a(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/bumptech/glide/load/resource/c/c;, "Lcom/bumptech/glide/load/resource/c/c<TT;>;"
    const-string v0, ""

    return-object v0
.end method
