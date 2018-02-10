.class Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->addCourseFinishWatcher()V
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
        "Lcom/jiliguala/niuwa/logic/b/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$2;->a:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/f;)V
    .locals 2
    .param p1, "mcPcEvent"    # Lcom/jiliguala/niuwa/logic/b/a/f;

    .prologue
    const/4 v1, 0x1

    .line 177
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/f;->b:I

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    return-void

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$2;->a:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;Z)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$2;->a:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;Z)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1023
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 174
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/f;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$2;->a(Lcom/jiliguala/niuwa/logic/b/a/f;)V

    return-void
.end method
