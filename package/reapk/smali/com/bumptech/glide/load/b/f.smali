.class public Lcom/bumptech/glide/load/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/l",
        "<TA;",
        "Lcom/bumptech/glide/load/b/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "IVML"


# instance fields
.field private final b:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/b/l",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/bumptech/glide/load/b/f;, "Lcom/bumptech/glide/load/b/f<TA;>;"
    .local p1, "streamLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TA;Ljava/io/InputStream;>;"
    .local p2, "fileDescriptorLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TA;Landroid/os/ParcelFileDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "At least one of streamLoader and fileDescriptorLoader must be non null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/b/f;->b:Lcom/bumptech/glide/load/b/l;

    .line 32
    iput-object p2, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/load/b/l;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 3
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/bumptech/glide/load/b/f;, "Lcom/bumptech/glide/load/b/f<TA;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    const/4 v1, 0x0

    .line 38
    .local v1, "streamFetcher":Lcom/bumptech/glide/load/a/c;, "Lcom/bumptech/glide/load/a/c<Ljava/io/InputStream;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->b:Lcom/bumptech/glide/load/b/l;

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->b:Lcom/bumptech/glide/load/b/l;

    invoke-interface {v2, p1, p2, p3}, Lcom/bumptech/glide/load/b/l;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "fileDescriptorFetcher":Lcom/bumptech/glide/load/a/c;, "Lcom/bumptech/glide/load/a/c<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/load/b/l;

    if-eqz v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/load/b/l;

    invoke-interface {v2, p1, p2, p3}, Lcom/bumptech/glide/load/b/l;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    .line 46
    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 47
    :cond_2
    new-instance v2, Lcom/bumptech/glide/load/b/f$a;

    invoke-direct {v2, v1, v0}, Lcom/bumptech/glide/load/b/f$a;-><init>(Lcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/load/a/c;)V

    .line 49
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method