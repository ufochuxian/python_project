.class Lcom/alibaba/sdk/android/feedback/windvane/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/l;->a:Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/l;->a:Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/windvane/WXBaseHybridActivity;->finish()V

    return-void
.end method
