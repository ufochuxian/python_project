.class Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/views/book/PageView;-><init>(Landroid/app/Activity;Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;FLcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 110
    :goto_0
    return v0

    .line 95
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$102(Lcom/jiliguala/niuwa/module/story/views/book/PageView;Z)Z

    .line 96
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$200(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 97
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$400(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;->getChinese()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$302(Lcom/jiliguala/niuwa/module/story/views/book/PageView;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$500(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$300(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->stopSpotlighting(Z)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v2, v1}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$102(Lcom/jiliguala/niuwa/module/story/views/book/PageView;Z)Z

    .line 104
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$200(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 105
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$400(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$302(Lcom/jiliguala/niuwa/module/story/views/book/PageView;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$500(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$300(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;->a:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->startSpotlighting()V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
