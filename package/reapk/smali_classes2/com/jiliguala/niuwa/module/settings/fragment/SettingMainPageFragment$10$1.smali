.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/q/b;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;Lcom/jiliguala/niuwa/logic/q/b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10$1;->a:Lcom/jiliguala/niuwa/logic/q/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "selected"    # I

    .prologue
    .line 300
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10$1;->a:Lcom/jiliguala/niuwa/logic/q/b;

    sget-object v2, Lcom/jiliguala/niuwa/logic/q/b;->d:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/q/b;->b(I)V

    .line 301
    if-eqz p1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10$1;->a:Lcom/jiliguala/niuwa/logic/q/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/q/b;->a(Z)V

    .line 306
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10$1;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$1000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/q/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Value"

    if-nez p1, :cond_1

    const-string v1, "unlimited"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Watch Time Control"

    .line 310
    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 311
    return-void

    .line 304
    .end local v0    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10$1;->a:Lcom/jiliguala/niuwa/logic/q/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/q/b;->a(Z)V

    goto :goto_0

    .line 308
    .restart local v0    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    sget-object v1, Lcom/jiliguala/niuwa/logic/q/b;->d:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method
