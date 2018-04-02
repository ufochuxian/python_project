.class Lcom/jiliguala/niuwa/module/game/GameActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog$DismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/game/GameActivity;->showReward(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/game/GameActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/game/GameActivity;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$6;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$6;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$300(Lcom/jiliguala/niuwa/module/game/GameActivity;)V

    .line 834
    return-void
.end method
