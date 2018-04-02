.class Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->addEventObserver()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$4;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 1
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 458
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 472
    :goto_0
    return-void

    .line 460
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$4;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->finish()V

    goto :goto_0

    .line 463
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$4;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->onResume()V

    goto :goto_0

    .line 467
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$4;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V

    goto :goto_0

    .line 470
    :sswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$4;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->access$400(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V

    goto :goto_0

    .line 458
    :sswitch_data_0
    .sparse-switch
        0x1027 -> :sswitch_0
        0x1029 -> :sswitch_1
        0x1034 -> :sswitch_2
        0x1036 -> :sswitch_3
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 455
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$4;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method
