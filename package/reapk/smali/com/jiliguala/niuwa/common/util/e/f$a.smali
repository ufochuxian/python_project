.class public Lcom/jiliguala/niuwa/common/util/e/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->b:I

    .line 125
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->c:[B

    .line 126
    return-void
.end method

.method public constructor <init>(ILcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p2, "unzipFileInterface"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->b:I

    .line 130
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->c:[B

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->a:Ljava/lang/ref/WeakReference;

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/e/f$a;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/e/f$a;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->d:I

    return p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/e/f$a;)[B
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/e/f$a;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->c:[B

    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/util/e/f$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/e/f$a;

    .prologue
    .line 116
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->d:I

    return v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/util/e/f$a;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/e/f$a;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->e:I

    return p1
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/util/e/f$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/e/f$a;

    .prologue
    .line 116
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->e:I

    return v0
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;)V
    .locals 1
    .param p1, "unzipFileInterface"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;

    .prologue
    .line 135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->a:Ljava/lang/ref/WeakReference;

    .line 136
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/e/f$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;->refreshUnZipFileProgress(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method
