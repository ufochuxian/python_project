.class Lcom/jiliguala/niuwa/module/game/GameActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/game/GameActivity;->processChiShenResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
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
    .line 630
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$4;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 634
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 630
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/game/GameActivity$4;->a(Ljava/lang/String;)V

    return-void
.end method
