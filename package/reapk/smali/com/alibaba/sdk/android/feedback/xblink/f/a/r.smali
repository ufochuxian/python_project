.class Lcom/alibaba/sdk/android/feedback/xblink/f/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/f/m;

.field final synthetic b:Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/r;->b:Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/r;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/r;->b:Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;

    iget-object v0, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/r;->b:Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;

    iget-object v0, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/r;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V

    :cond_0
    return-void
.end method
