.class Lcom/nostra13/universalimageloader/core/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/h;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/nostra13/universalimageloader/core/h;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/h;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/h$2;->c:Lcom/nostra13/universalimageloader/core/h;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/h$2;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/h$2;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 357
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h$2;->c:Lcom/nostra13/universalimageloader/core/h;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h$2;->c:Lcom/nostra13/universalimageloader/core/h;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/h;->b:Lcom/nostra13/universalimageloader/core/c/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h$2;->c:Lcom/nostra13/universalimageloader/core/h;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/h$2;->c:Lcom/nostra13/universalimageloader/core/h;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/core/h;->a(Lcom/nostra13/universalimageloader/core/h;)Lcom/nostra13/universalimageloader/core/e;

    move-result-object v2

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c;->c(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h$2;->c:Lcom/nostra13/universalimageloader/core/h;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/h;->d:Lcom/nostra13/universalimageloader/core/d/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h$2;->c:Lcom/nostra13/universalimageloader/core/h;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/h$2;->c:Lcom/nostra13/universalimageloader/core/h;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/h;->b:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h$2;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/h$2;->b:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/assist/FailReason;-><init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d/a;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    .line 361
    return-void
.end method
