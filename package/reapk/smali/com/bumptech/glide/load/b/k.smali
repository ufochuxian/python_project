.class public Lcom/bumptech/glide/load/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:I = 0xfa


# instance fields
.field private final b:Lcom/bumptech/glide/i/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i/f",
            "<",
            "Lcom/bumptech/glide/load/b/k$a",
            "<TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/bumptech/glide/load/b/k;, "Lcom/bumptech/glide/load/b/k<TA;TB;>;"
    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/k;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 25
    .local p0, "this":Lcom/bumptech/glide/load/b/k;, "Lcom/bumptech/glide/load/b/k<TA;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/b/k$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/b/k$1;-><init>(Lcom/bumptech/glide/load/b/k;I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/i/f;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/bumptech/glide/load/b/k;, "Lcom/bumptech/glide/load/b/k<TA;TB;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/k$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/k$a;

    move-result-object v0

    .line 45
    .local v0, "key":Lcom/bumptech/glide/load/b/k$a;, "Lcom/bumptech/glide/load/b/k$a<TA;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/i/f;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/i/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    .local v1, "result":Ljava/lang/Object;, "TB;"
    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/k$a;->a()V

    .line 47
    return-object v1
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/bumptech/glide/load/b/k;, "Lcom/bumptech/glide/load/b/k<TA;TB;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    .local p4, "value":Ljava/lang/Object;, "TB;"
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/k$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/k$a;

    move-result-object v0

    .line 60
    .local v0, "key":Lcom/bumptech/glide/load/b/k$a;, "Lcom/bumptech/glide/load/b/k$a<TA;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/b/k;->b:Lcom/bumptech/glide/i/f;

    invoke-virtual {v1, v0, p4}, Lcom/bumptech/glide/i/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
