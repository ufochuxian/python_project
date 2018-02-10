.class Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->bingo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$5;->b:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    iput p2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$5;->b:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$200(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$5;->a:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setCurrentItem(IZ)V

    .line 290
    return-void
.end method
