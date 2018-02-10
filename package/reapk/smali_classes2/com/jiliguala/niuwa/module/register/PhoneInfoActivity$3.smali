.class Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x838

    .line 112
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget v5, v5, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mMode:I

    if-ne v5, v8, :cond_2

    .line 113
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    const/16 v6, 0x6c

    invoke-interface {v5, v6}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 114
    .local v4, "phoneOrEmail":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/x;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    const-string v5, "Type"

    const-string v6, "Email"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Forgot Password"

    .line 118
    invoke-virtual {v5, v6, v3}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 121
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/http/entity/ForgetPwdEntity;

    invoke-direct {v1, v4}, Lcom/jiliguala/niuwa/logic/network/http/entity/ForgetPwdEntity;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "entity":Lcom/jiliguala/niuwa/logic/network/http/entity/ForgetPwdEntity;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 125
    .local v0, "body":Lokhttp3/ab;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v5

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v6

    .line 126
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v6

    .line 127
    invoke-interface {v6, v0}, Lcom/jiliguala/niuwa/logic/network/d;->m(Lokhttp3/ab;)Lrx/e;

    move-result-object v6

    .line 128
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v6

    .line 129
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v6

    .line 130
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v6

    new-instance v7, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3$1;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3$1;-><init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;)V

    .line 131
    invoke-virtual {v6, v7}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v6

    .line 125
    invoke-virtual {v5, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 175
    .end local v0    # "body":Lokhttp3/ab;
    .end local v1    # "entity":Lcom/jiliguala/niuwa/logic/network/http/entity/ForgetPwdEntity;
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "phoneOrEmail":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "phoneOrEmail":Ljava/lang/String;
    :cond_1
    const-string v5, "Type"

    const-string v6, "Mobile"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Forgot Password"

    .line 160
    invoke-virtual {v5, v6, v3}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 161
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iput-object v4, v5, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhone:Ljava/lang/String;

    .line 167
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "phoneOrEmail":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget v5, v5, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mMode:I

    if-ne v5, v8, :cond_3

    .line 168
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget-object v6, v6, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhone:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->access$100(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;Ljava/lang/String;)V

    .line 172
    :goto_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 173
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    const/16 v7, 0x6b

    invoke-interface {v5, v7}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhone:Ljava/lang/String;

    goto :goto_1

    .line 170
    :cond_3
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget-object v6, v6, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhone:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->access$200(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;Ljava/lang/String;)V

    goto :goto_2
.end method
