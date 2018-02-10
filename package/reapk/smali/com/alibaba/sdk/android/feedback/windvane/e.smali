.class Lcom/alibaba/sdk/android/feedback/windvane/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/e;->b:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/windvane/e;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/e;->b:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->c(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)I

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/e;->b:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->d(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mFeedbackCustomInfoMap:Ljava/util/Map;

    const-string v1, "uid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/e;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
