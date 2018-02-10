.class final Lcom/nostra13/universalimageloader/core/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Lcom/nostra13/universalimageloader/core/c/a;

.field final d:Lcom/nostra13/universalimageloader/core/assist/c;

.field final e:Lcom/nostra13/universalimageloader/core/c;

.field final f:Lcom/nostra13/universalimageloader/core/d/a;

.field final g:Lcom/nostra13/universalimageloader/core/d/b;

.field final h:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/assist/c;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;
    .param p3, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/c;
    .param p4, "memoryCacheKey"    # Ljava/lang/String;
    .param p5, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p6, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;
    .param p7, "progressListener"    # Lcom/nostra13/universalimageloader/core/d/b;
    .param p8, "loadFromUriLock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/g;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/g;->c:Lcom/nostra13/universalimageloader/core/c/a;

    .line 51
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/g;->d:Lcom/nostra13/universalimageloader/core/assist/c;

    .line 52
    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/g;->e:Lcom/nostra13/universalimageloader/core/c;

    .line 53
    iput-object p6, p0, Lcom/nostra13/universalimageloader/core/g;->f:Lcom/nostra13/universalimageloader/core/d/a;

    .line 54
    iput-object p7, p0, Lcom/nostra13/universalimageloader/core/g;->g:Lcom/nostra13/universalimageloader/core/d/b;

    .line 55
    iput-object p8, p0, Lcom/nostra13/universalimageloader/core/g;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/g;->b:Ljava/lang/String;

    .line 57
    return-void
.end method
