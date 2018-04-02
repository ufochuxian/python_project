.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog$DismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->showMcPhReward(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$3;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$3;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$1100(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V

    .line 1086
    return-void
.end method
