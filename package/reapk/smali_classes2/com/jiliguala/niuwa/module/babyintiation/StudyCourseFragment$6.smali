.class Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->addEventObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lcom/jiliguala/niuwa/logic/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$6;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 1
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 665
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 673
    :goto_0
    :pswitch_0
    return-void

    .line 667
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$6;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->onSwitchChild()V

    goto :goto_0

    .line 670
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$6;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->onChildGained()V

    goto :goto_0

    .line 665
    :pswitch_data_0
    .packed-switch 0x1004
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 661
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$6;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method
