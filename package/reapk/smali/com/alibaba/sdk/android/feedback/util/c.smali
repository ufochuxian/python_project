.class Lcom/alibaba/sdk/android/feedback/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/util/b;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/util/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->a:Lcom/alibaba/sdk/android/feedback/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->a:Lcom/alibaba/sdk/android/feedback/util/b;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/b;->a(Lcom/alibaba/sdk/android/feedback/util/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
