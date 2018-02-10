.class Landroid/support/v4/app/au$c;
.super Landroid/support/v4/app/au$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/v4/app/au$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    invoke-static {p1}, Landroid/support/v4/app/av;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "result":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Landroid/support/v4/app/au$c;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 106
    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 125
    invoke-static {p2}, Landroid/support/v4/app/av;->a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 127
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/au$b;->a(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-static {p1, p2}, Landroid/support/v4/app/av;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method b(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/au$b;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 120
    invoke-static {p1, p2}, Landroid/support/v4/app/av;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 121
    return-void
.end method
