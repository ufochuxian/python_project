.class public Lcom/bumptech/glide/load/resource/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/e",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/c",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/bumptech/glide/load/resource/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/c;->a:Lcom/bumptech/glide/load/resource/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/bumptech/glide/load/resource/c;, "Lcom/bumptech/glide/load/resource/c<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/bumptech/glide/load/resource/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/bumptech/glide/load/resource/c;->a:Lcom/bumptech/glide/load/resource/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/bumptech/glide/load/resource/c;, "Lcom/bumptech/glide/load/resource/c<TT;>;"
    const-string v0, ""

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/k;Ljava/io/OutputStream;)Z
    .locals 1
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/bumptech/glide/load/resource/c;, "Lcom/bumptech/glide/load/resource/c<TT;>;"
    .local p1, "data":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 13
    .local p0, "this":Lcom/bumptech/glide/load/resource/c;, "Lcom/bumptech/glide/load/resource/c<TT;>;"
    check-cast p1, Lcom/bumptech/glide/load/engine/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/c;->a(Lcom/bumptech/glide/load/engine/k;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
