.class Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->addCourseFinishWatcher()V
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
        "Lcom/jiliguala/niuwa/logic/b/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/d;)V
    .locals 5
    .param p1, "courseEvent"    # Lcom/jiliguala/niuwa/logic/b/a/d;

    .prologue
    .line 208
    iget v3, p1, Lcom/jiliguala/niuwa/logic/b/a/d;->b:I

    sparse-switch v3, :sswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 212
    :sswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/d;->b()Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->onRequestDataSuccess(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    .line 223
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mJumpInfoSubCourseContent:Z

    if-nez v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$000(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->report(I)V

    .line 227
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/d;->b()Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/d;->b()Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    move-result-object v3

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/d;->b()Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    move-result-object v3

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget v2, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courseindex:I

    .line 229
    .local v2, "index":I
    const/4 v1, 0x0

    .line 231
    .local v1, "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :try_start_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/d;->b()Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    move-result-object v3

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    if-eqz v1, :cond_0

    .line 236
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4, v2}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$100(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;Ljava/lang/String;I)V

    goto :goto_0

    .line 248
    .end local v1    # "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .end local v2    # "index":I
    :sswitch_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$000(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->report(I)V

    goto :goto_0

    .line 252
    :sswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$200(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$300(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$400(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    .line 262
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$202(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;Z)Z

    goto :goto_0

    .line 258
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$500(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$400(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    goto :goto_2

    .line 267
    :sswitch_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->refreshUnitUnlockSuccess()V

    goto/16 :goto_0

    .line 232
    .restart local v1    # "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .restart local v2    # "index":I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x1012 -> :sswitch_0
        0x1014 -> :sswitch_1
        0x1020 -> :sswitch_2
        0x1022 -> :sswitch_3
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 205
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/d;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;->a(Lcom/jiliguala/niuwa/logic/b/a/d;)V

    return-void
.end method
