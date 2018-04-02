.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->dialog:Lcom/jiliguala/niuwa/common/a/g;

    .line 222
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$000(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->requestLessonContent(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$100(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
