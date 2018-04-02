.class Lcom/jiliguala/niuwa/module/game/GameActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/game/GameActivity;->addEventObserver()V
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
        "Lcom/jiliguala/niuwa/logic/b/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/game/GameActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/game/GameActivity;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$1;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/e;)V
    .locals 1
    .param p1, "gameEvent"    # Lcom/jiliguala/niuwa/logic/b/a/e;

    .prologue
    .line 184
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/e;->a:I

    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$1;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$000(Lcom/jiliguala/niuwa/module/game/GameActivity;)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1028
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/e;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/game/GameActivity$1;->a(Lcom/jiliguala/niuwa/logic/b/a/e;)V

    return-void
.end method
