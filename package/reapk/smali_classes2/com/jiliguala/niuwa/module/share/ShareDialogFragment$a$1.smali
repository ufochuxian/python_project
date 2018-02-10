.class Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 308
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->dismissAllowingStateLoss()V

    .line 309
    :goto_1
    return-void

    .line 261
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$200(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const-string v0, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$300(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$400(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$500(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$200(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v6, v6, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$600(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v7, v7, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$700(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v8, v8, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v9, v9, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v9}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$800(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v10, v10, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .line 267
    invoke-static {v10}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$900(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v11, v11, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v11}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v11

    .line 266
    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$200(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    const-string v0, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5QQ\u5ba2\u6237\u7aef"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 277
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$300(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$400(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$500(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$200(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v6, v6, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$600(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v7, v7, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$700(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v8, v8, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v9, v9, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v9}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$800(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v10, v10, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .line 278
    invoke-static {v10}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$900(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v11, v11, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v11}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v11

    .line 277
    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :sswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$200(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 284
    const-string v0, "\u5206\u4eab\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u65b0\u6d6a\u5fae\u535a\u5ba2\u6237\u7aef"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 287
    :cond_2
    new-instance v12, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v12, "intent":Landroid/content/Intent;
    const-string v0, "key_abst"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$400(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "key_thmb_url"

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$500(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$800(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v0, "key_title"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$300(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v0, "key_plat"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v0, "key_pid"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$200(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v0, "key_type"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    const-string v0, "key_age"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$700(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v0, "key_cat"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$600(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v0, "share_url_thmb"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$900(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v0, "share_source"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-virtual {v0, v12}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 299
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$500(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 303
    .end local v12    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$200(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$300(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$400(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$500(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$200(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v6, v6, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$600(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v7, v7, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$700(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v8, v8, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v9, v9, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v9}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$800(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v10, v10, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$900(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a$1;->a:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    iget-object v11, v11, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;->e:Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .line 305
    invoke-static {v11}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->access$100(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;

    move-result-object v11

    .line 304
    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_0
        0x7f0903b1 -> :sswitch_4
        0x7f0904dd -> :sswitch_1
        0x7f0904de -> :sswitch_2
        0x7f0904df -> :sswitch_2
        0x7f0904e2 -> :sswitch_1
        0x7f0904e3 -> :sswitch_3
    .end sparse-switch
.end method
