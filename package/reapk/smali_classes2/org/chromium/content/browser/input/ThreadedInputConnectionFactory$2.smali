.class Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->postCheckRegisterResultOnUiThread(Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

.field final synthetic val$checkInvalidator:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

.field final synthetic val$retry:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;I)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->val$checkInvalidator:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    iput p4, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->val$retry:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->val$view:Landroid/view/View;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->val$checkInvalidator:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    iget v3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->val$retry:I

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$600(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;I)V

    .line 197
    return-void
.end method
