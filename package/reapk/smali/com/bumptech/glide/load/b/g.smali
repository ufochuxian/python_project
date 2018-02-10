.class public Lcom/bumptech/glide/load/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "streamData"    # Ljava/io/InputStream;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bumptech/glide/load/b/g;->a:Ljava/io/InputStream;

    .line 16
    iput-object p2, p0, Lcom/bumptech/glide/load/b/g;->b:Landroid/os/ParcelFileDescriptor;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->b:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
