.class Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v1, v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v2, v2, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    invoke-static {v2}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$100(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$400(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;I)V

    .line 181
    return-void
.end method
