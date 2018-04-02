.class public final Lcom/jiliguala/niuwa/services/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/services/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/content/Context;

.field private c:Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;

.field private d:Landroid/view/View;

.field private e:Lcom/jiliguala/niuwa/services/e$a;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/e;->b:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/jiliguala/niuwa/services/e;->f:Ljava/lang/CharSequence;

    .line 38
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/e;->a:Landroid/view/WindowManager;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/services/e;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/e;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jiliguala/niuwa/services/e;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/high16 v3, 0x8000000

    const/4 v1, 0x1

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .local v0, "version":I
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->K()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 64
    const/16 v1, 0x18

    invoke-static {p0, v1}, Lcom/jiliguala/niuwa/services/e;->a(Landroid/content/Context;I)Z

    move-result v1

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    .line 70
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 81
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .local v5, "version":I
    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 84
    const-string v6, "appops"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 86
    .local v2, "manager":Landroid/app/AppOpsManager;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 87
    .local v3, "managerClass":Ljava/lang/Class;
    const-string v6, "checkOp"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v3, v6, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 88
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 90
    .local v1, "isAllowNum":I
    if-nez v1, :cond_0

    move v6, v7

    .line 99
    .end local v1    # "isAllowNum":I
    .end local v2    # "manager":Landroid/app/AppOpsManager;
    .end local v3    # "managerClass":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v6

    .restart local v1    # "isAllowNum":I
    .restart local v2    # "manager":Landroid/app/AppOpsManager;
    .restart local v3    # "managerClass":Ljava/lang/Class;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move v6, v8

    .line 93
    goto :goto_0

    .line 95
    .end local v1    # "isAllowNum":I
    .end local v3    # "managerClass":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "manager":Landroid/app/AppOpsManager;
    :cond_1
    move v6, v8

    .line 99
    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/e;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/e;->c:Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/e;->a:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/jiliguala/niuwa/services/e;->c:Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/e;->e:Lcom/jiliguala/niuwa/services/e$a;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/e;->e:Lcom/jiliguala/niuwa/services/e$a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/services/e$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 12

    .prologue
    .line 121
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/e;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/jiliguala/niuwa/services/e;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/e;->b:Landroid/content/Context;

    const v8, 0x7f0b016b

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;

    .line 125
    .local v7, "view":Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;
    const v5, 0x7f0903fa

    invoke-virtual {v7, v5}, Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/services/e;->g:Landroid/widget/TextView;

    .line 126
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/e;->g:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/jiliguala/niuwa/services/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iput-object v7, p0, Lcom/jiliguala/niuwa/services/e;->c:Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;

    .line 129
    const v5, 0x7f0903f9

    invoke-virtual {v7, v5}, Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/services/e;->d:Landroid/view/View;

    .line 136
    const/4 v1, -0x2

    .line 137
    .local v1, "w":I
    const/4 v2, -0x2

    .line 139
    .local v2, "h":I
    const/16 v4, 0x208

    .line 140
    .local v4, "flags":I
    const/4 v3, 0x0

    .line 141
    .local v3, "type":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v5, v8, :cond_0

    .line 142
    const/16 v3, 0x7d5

    .line 147
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 149
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x51

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 152
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/e;->a:Landroid/view/WindowManager;

    iget-object v8, p0, Lcom/jiliguala/niuwa/services/e;->c:Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;

    invoke-interface {v5, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/e;->c:Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;

    new-instance v8, Lcom/jiliguala/niuwa/services/e$1;

    invoke-direct {v8, p0}, Lcom/jiliguala/niuwa/services/e$1;-><init>(Lcom/jiliguala/niuwa/services/e;)V

    const-wide/16 v10, 0x7d0

    invoke-virtual {v5, v8, v10, v11}, Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    .end local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "type":I
    .end local v4    # "flags":I
    .end local v7    # "view":Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;
    :goto_2
    return-void

    .line 144
    .restart local v1    # "w":I
    .restart local v2    # "h":I
    .restart local v3    # "type":I
    .restart local v4    # "flags":I
    .restart local v7    # "view":Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;
    :cond_0
    const/16 v3, 0x7d2

    goto :goto_0

    .line 153
    .restart local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v6

    .line 154
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 163
    .end local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "type":I
    .end local v4    # "flags":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "view":Lcom/jiliguala/niuwa/common/widget/viewcontainer/ViewContainer;
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/e;->b:Landroid/content/Context;

    iget-object v8, p0, Lcom/jiliguala/niuwa/services/e;->f:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 211
    .local v0, "keyCode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/jiliguala/niuwa/services/e;->b()V

    .line 214
    :cond_0
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/services/e$a;)V
    .locals 0
    .param p1, "viewDismissHandler"    # Lcom/jiliguala/niuwa/services/e$a;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/e;->e:Lcom/jiliguala/niuwa/services/e$a;

    .line 104
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/e;->f:Ljava/lang/CharSequence;

    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/e;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/e;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/e;->a()V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/e;->f:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/jiliguala/niuwa/services/e;->b()V

    .line 170
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 199
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 200
    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 201
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/jiliguala/niuwa/services/e;->d:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/jiliguala/niuwa/services/e;->b()V

    .line 205
    :cond_0
    const/4 v3, 0x0

    return v3
.end method
