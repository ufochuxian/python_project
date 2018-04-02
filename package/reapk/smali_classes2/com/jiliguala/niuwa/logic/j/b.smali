.class final Lcom/jiliguala/niuwa/logic/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/jiliguala/niuwa/logic/j/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/j/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static a(Landroid/content/Context;ZZLcom/jiliguala/niuwa/logic/j/c;Landroid/view/View;)Landroid/app/Dialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isShowNeutralButton"    # Z
    .param p2, "isShowTitle"    # Z
    .param p3, "listener"    # Lcom/jiliguala/niuwa/logic/j/c;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 47
    sput-object p0, Lcom/jiliguala/niuwa/logic/j/b;->b:Landroid/content/Context;

    .line 48
    new-instance v1, Landroid/app/Dialog;

    const v5, 0x7f1000b4

    invoke-direct {v1, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 50
    const v5, 0x7f0b0172

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f070120

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 53
    .local v4, "width":I
    const/4 v2, -0x2

    .line 54
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/view/Window;->setLayout(II)V

    .line 55
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 56
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 57
    const v5, 0x7f09042b

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, "content":Landroid/widget/TextView;
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v5, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 69
    :goto_1
    const v5, 0x7f0903a5

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/logic/j/b$1;

    invoke-direct {v6, p0, v1}, Lcom/jiliguala/niuwa/logic/j/b$1;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v3, Lcom/jiliguala/niuwa/logic/j/b$2;

    invoke-direct {v3, p0, v1}, Lcom/jiliguala/niuwa/logic/j/b$2;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 98
    .local v3, "rejectListener":Landroid/view/View$OnClickListener;
    new-instance v5, Lcom/jiliguala/niuwa/logic/j/b$3;

    invoke-direct {v5, v3}, Lcom/jiliguala/niuwa/logic/j/b$3;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 105
    new-instance v5, Lcom/jiliguala/niuwa/logic/j/b$4;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/logic/j/b$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 118
    :try_start_0
    new-instance v5, Lcom/jiliguala/niuwa/logic/j/b$5;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/logic/j/b$5;-><init>()V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_2
    return-object v1

    .line 58
    .end local v3    # "rejectListener":Landroid/view/View$OnClickListener;
    :sswitch_0
    const-string v6, "update"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_1
    const-string v8, "newly_install"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 60
    :pswitch_0
    const v5, 0x7f0f0185

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 63
    :pswitch_1
    const v5, 0x7f0f0184

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 124
    .restart local v3    # "rejectListener":Landroid/view/View$OnClickListener;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        -0x31ffc737 -> :sswitch_0
        -0x1fbbe177 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/jiliguala/niuwa/logic/j/b;->b:Landroid/content/Context;

    .line 159
    return-void
.end method

.method private static b()V
    .locals 3

    .prologue
    .line 131
    sget-object v1, Lcom/jiliguala/niuwa/logic/j/b;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 132
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/jiliguala/niuwa/logic/j/b;->b:Landroid/content/Context;

    const-class v2, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    sget-object v1, Lcom/jiliguala/niuwa/logic/j/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static c()V
    .locals 7

    .prologue
    const v6, 0x7f010020

    const v5, 0x7f01001f

    .line 138
    sget-object v4, Lcom/jiliguala/niuwa/logic/j/b;->b:Landroid/content/Context;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/jiliguala/niuwa/logic/j/b;->b:Landroid/content/Context;

    instance-of v4, v4, Landroid/support/v4/app/FragmentActivity;

    if-nez v4, :cond_1

    .line 154
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    .local v1, "ft":Landroid/support/v4/app/an;
    .local v2, "readOnly":Z
    .local v3, "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 139
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    .end local v1    # "ft":Landroid/support/v4/app/an;
    .end local v2    # "readOnly":Z
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    const-string v4, "\u610f\u89c1\u53cd\u9988"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .restart local v3    # "title":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 141
    .restart local v2    # "readOnly":Z
    sget-object v4, Lcom/jiliguala/niuwa/logic/j/b;->b:Landroid/content/Context;

    check-cast v4, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    move-result-object v0

    .line 142
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setBoid(I)V

    .line 143
    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setBoidTitle(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->setReadOnly(Z)V

    .line 145
    sget-object v4, Lcom/jiliguala/niuwa/logic/j/b;->b:Landroid/content/Context;

    check-cast v4, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 146
    .restart local v1    # "ft":Landroid/support/v4/app/an;
    invoke-virtual {v1, v5, v6, v5, v6}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 147
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 148
    const v4, 0x7f090481

    sget-object v5, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v4, v0, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 149
    sget-object v4, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 153
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v1, v0}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1
.end method
