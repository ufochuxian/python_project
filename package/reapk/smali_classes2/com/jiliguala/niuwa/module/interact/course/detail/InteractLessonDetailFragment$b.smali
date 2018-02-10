.class Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;
.super Lcom/jiliguala/niuwa/logic/image/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/logic/image/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)V
    .locals 1
    .param p1, "ref"    # Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;-><init>()V

    .line 802
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->d:Ljava/lang/ref/WeakReference;

    .line 803
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 815
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 818
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->access$000(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 821
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 797
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->a([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 826
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->access$100(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 828
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->access$200(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 831
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 797
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 807
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->d()V

    .line 808
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    :cond_0
    return-void
.end method
