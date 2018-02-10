.class Lcom/alibaba/sdk/android/feedback/windvane/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/windvane/g;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/windvane/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/j;->a:Lcom/alibaba/sdk/android/feedback/windvane/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/j;->a:Lcom/alibaba/sdk/android/feedback/windvane/g;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/windvane/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
