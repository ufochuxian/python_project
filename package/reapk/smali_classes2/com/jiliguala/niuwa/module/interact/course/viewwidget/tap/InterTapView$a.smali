.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;ILjava/lang/String;)V
    .locals 1
    .param p2, "position"    # I
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->b:I

    .line 233
    iput p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->b:I

    .line 234
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->c:Ljava/lang/String;

    .line 235
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;ILjava/lang/String;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$1;

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;ILjava/lang/String;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "thumb"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    .line 261
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/e/a;->z()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v2

    .line 261
    invoke-virtual {v0, v1, p1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 263
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f090294

    .line 239
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;

    move-result-object v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->playTabMusic()V

    .line 244
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->c:Ljava/lang/String;

    iget v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->b:I

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->onTapItem(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    move-object v0, p1

    .line 247
    check-cast v0, Landroid/widget/ImageView;

    .line 248
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->getItemThumbSelected()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    move-object v0, p1

    .line 253
    check-cast v0, Landroid/widget/ImageView;

    .line 254
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->getItemThumbNormal()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$a;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method
