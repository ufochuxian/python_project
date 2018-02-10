.class Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->switchLevel(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->d:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/JsonObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    const/high16 v4, 0x10000000

    .line 230
    if-eqz p1, :cond_2

    .line 231
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    if-eqz v2, :cond_1

    .line 232
    const-string v1, ""

    .line 233
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isMc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 234
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    const-string v1, "\u60a8\u5df2\u7ecf\u5207\u6362\u5230\u79cd\u5b50\u8def\u7ebf0-1\u5c81"

    .line 244
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 246
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->d:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 247
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isNewRoadMap(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    const-string v2, "type"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v2, "server_lv"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 236
    .restart local v1    # "str":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    const-string v1, "\u60a8\u5df2\u7ecf\u5207\u6362\u5230\u840c\u82bd\u8def\u7ebf1-2\u5c81"

    goto :goto_0

    .line 239
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u5df2\u5207\u6362\u5230\u4e3b\u7ebf\u8bfe\u7a0b "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 241
    :cond_5
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isPH(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u5df2\u5207\u6362\u5230\u81ea\u7136\u62fc\u8bfb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 253
    .end local v1    # "str":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 256
    const-string v2, "type"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v2, "server_lv"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 259
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    const-string v2, "type"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v2, "server_lv"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 226
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method
