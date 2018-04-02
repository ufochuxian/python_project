.class Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->addEventObserver()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$3;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 1
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 666
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 677
    :goto_0
    return-void

    .line 668
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$3;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->finish()V

    goto :goto_0

    .line 671
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$3;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->onResume()V

    goto :goto_0

    .line 675
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$3;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$1100(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    goto :goto_0

    .line 666
    :sswitch_data_0
    .sparse-switch
        0x1027 -> :sswitch_0
        0x1029 -> :sswitch_1
        0x1036 -> :sswitch_2
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 663
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$3;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method
