.class Lcom/jiliguala/niuwa/module/game/GameActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/game/GameActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/game/GameActivity$5;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/game/GameActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/game/GameActivity$5;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$5$1;->a:Lcom/jiliguala/niuwa/module/game/GameActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$5$1;->a:Lcom/jiliguala/niuwa/module/game/GameActivity$5;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/game/GameActivity$5;->b:Lcom/jiliguala/niuwa/module/game/GameActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$5$1;->a:Lcom/jiliguala/niuwa/module/game/GameActivity$5;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/game/GameActivity$5;->a:Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$200(Lcom/jiliguala/niuwa/module/game/GameActivity;Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V

    .line 816
    return-void
.end method
