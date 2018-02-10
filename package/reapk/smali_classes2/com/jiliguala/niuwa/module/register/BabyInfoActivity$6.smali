.class Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$300(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)I

    move-result v6

    const/16 v9, 0x1005

    if-ne v6, v9, :cond_0

    .line 154
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v6

    if-nez v6, :cond_0

    .line 155
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v6

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v9

    .line 158
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v9

    .line 159
    invoke-interface {v9}, Lcom/jiliguala/niuwa/logic/network/d;->j()Lrx/e;

    move-result-object v9

    .line 160
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v9

    .line 161
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v9

    .line 162
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v9

    new-instance v10, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6$1;-><init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;)V

    .line 163
    invoke-virtual {v9, v10}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v9

    .line 157
    invoke-virtual {v6, v9}, Lrx/i/b;->a(Lrx/m;)V

    .line 254
    :goto_0
    return-void

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$600(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "nick":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$700(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, "birthday":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$800(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/helper/a/b;

    move-result-object v6

    const/16 v9, 0x6a

    invoke-interface {v6, v9}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 190
    .local v7, "gender":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 191
    :cond_1
    const-string v6, "\u5b9d\u8d1d\u4fe1\u606f\u4e0d\u80fd\u6709\u7a7a\u9879"

    invoke-static {v6}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0x14

    if-le v6, v9, :cond_3

    .line 195
    const-string v6, "\u5b9d\u5b9d\u6635\u79f0\u4e0d\u80fd\u8d85\u8fc720\u4e2a\u5b57\u7b26"

    invoke-static {v6}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 201
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 203
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v18, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$300(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 221
    :goto_1
    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/f;->d(Ljava/lang/String;)J

    move-result-wide v4

    .line 222
    .local v4, "bd":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v6

    if-nez v6, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 226
    :cond_4
    const/16 v17, 0x0

    .line 227
    .local v17, "json":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1000(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 228
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$900(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v2, "template":Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 231
    invoke-static/range {v17 .. v17}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v16

    .line 233
    .local v16, "body":Lokhttp3/ab;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v6

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v9

    .line 234
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v9

    .line 235
    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Lcom/jiliguala/niuwa/logic/network/d;->n(Lokhttp3/ab;)Lrx/e;

    move-result-object v9

    .line 236
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v9

    .line 237
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v9

    .line 238
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .line 239
    invoke-static {v10}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1100(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lrx/l;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v9

    .line 233
    invoke-virtual {v6, v9}, Lrx/i/b;->a(Lrx/m;)V

    goto/16 :goto_0

    .line 208
    .end local v2    # "template":Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;
    .end local v4    # "bd":J
    .end local v16    # "body":Lokhttp3/ab;
    .end local v17    # "json":Ljava/lang/String;
    :pswitch_0
    const-string v6, "Age"

    move-object/from16 v0, v18

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v9, "withPhoto"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$900(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v9, "Gender"

    const-string v6, "boy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "Male"

    :goto_3
    move-object/from16 v0, v18

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v9, "Add Baby"

    move-object/from16 v0, v18

    invoke-virtual {v6, v9, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 209
    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    .line 210
    :cond_6
    const-string v6, "Female"

    goto :goto_3

    .line 214
    :pswitch_1
    const-string v6, "Age"

    move-object/from16 v0, v18

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v6, "Gender"

    move-object/from16 v0, v18

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v9, "With Photo"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$900(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v9, "Edit Baby"

    move-object/from16 v0, v18

    invoke-virtual {v6, v9, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 216
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 241
    .restart local v4    # "bd":J
    .restart local v17    # "json":Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PatchBabyInfoTemplate;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1000(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$900(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v2

    move-object v11, v3

    move-wide v12, v4

    move-object v15, v7

    invoke-direct/range {v9 .. v15}, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PatchBabyInfoTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v2, "template":Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PatchBabyInfoTemplate;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 244
    invoke-static/range {v17 .. v17}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v16

    .line 246
    .restart local v16    # "body":Lokhttp3/ab;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v6

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v9

    .line 247
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v9

    .line 248
    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Lcom/jiliguala/niuwa/logic/network/d;->o(Lokhttp3/ab;)Lrx/e;

    move-result-object v9

    .line 249
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v9

    .line 250
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v9

    .line 251
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .line 252
    invoke-static {v10}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1100(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lrx/l;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v9

    .line 246
    invoke-virtual {v6, v9}, Lrx/i/b;->a(Lrx/m;)V

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1003
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
