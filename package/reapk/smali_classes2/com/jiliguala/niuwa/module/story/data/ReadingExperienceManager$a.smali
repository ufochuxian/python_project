.class Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V
    .locals 0

    .prologue
    .line 994
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$1;

    .prologue
    .line 994
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;-><init>(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1001
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1032
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognised reading mode button with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1003
    :pswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$600(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->READ_TO_ME:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    if-ne v2, v3, :cond_1

    .line 1005
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$700(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0802de

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1006
    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->AUTO_PLAY:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    .line 1007
    .local v1, "mode":Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$400(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$400(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->isFromPractice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1009
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$400(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->getSubtaskid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const-string v2, "Type"

    const-string v3, "Auto"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Read Act"

    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1013
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v2, "\u5207\u6362\u5230\u81ea\u52a8\u7ffb\u9875"

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1014
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$800(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V

    .line 1035
    :goto_0
    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$300(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->trackChooseReadToMeType(Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;)V

    .line 1036
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->setReadingMode(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;)V

    .line 1038
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$902(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Z)Z

    .line 1044
    return-void

    .line 1015
    .end local v1    # "mode":Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$600(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->AUTO_PLAY:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    if-ne v2, v3, :cond_3

    .line 1017
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$700(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0802e1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1018
    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->READ_TO_ME:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    .line 1019
    .restart local v1    # "mode":Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$400(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$400(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->isFromPractice()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1020
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1021
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$400(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->getSubtaskid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    const-string v2, "Type"

    const-string v3, "Normal"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Read Act"

    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1025
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v2, "\u5207\u6362\u5230\u624b\u52a8\u7ffb\u9875"

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1026
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$800(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V

    goto :goto_0

    .line 1028
    .end local v1    # "mode":Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;
    :cond_3
    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->AUTO_PLAY:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    .line 1030
    .restart local v1    # "mode":Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;
    goto :goto_0

    .line 1001
    nop

    :pswitch_data_0
    .packed-switch 0x7f0903c1
        :pswitch_0
    .end packed-switch
.end method
