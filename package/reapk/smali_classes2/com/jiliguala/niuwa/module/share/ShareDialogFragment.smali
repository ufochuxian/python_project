.class public Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;,
        Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$b;,
        Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$TYPE_ARRAY;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

.field private isShowing:Z

.field private mAbst:Ljava/lang/String;

.field private mAge:Ljava/lang/String;

.field private mCat:Ljava/lang/String;

.field private mPid:Ljava/lang/String;

.field private mShareGroup:Landroid/widget/GridView;

.field private mShareThmbUrll:Ljava/lang/String;

.field private mShareUrl:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mThmbUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private switcher:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->TAG:Ljava/lang/String;

    .line 43
    const-class v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isShowing:Z

    .line 57
    const-wide/32 v0, 0xffff

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->switcher:J

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mType:I

    return v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->switcher:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mPid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mAbst:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mThmbUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mCat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mAge:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mShareThmbUrll:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static clickReportToAmp(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "mPlatform"    # I
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "mPid"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    const-string v2, "ID"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 85
    :goto_0
    const-string v2, "Source"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Share Click"

    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    const/16 v2, 0xc

    if-ne p0, v2, :cond_1

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v1, "mapAmpOther":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Source"

    const-string v3, "Unit Unlock"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Share Click"

    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    .end local v1    # "mapAmpOther":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 67
    :sswitch_0
    const-string v2, "Type"

    const-string v3, "Friend"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :sswitch_1
    const-string v2, "Type"

    const-string v3, "Circle"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :sswitch_2
    const-string v2, "Type"

    const-string v3, "Qzone"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :sswitch_3
    const-string v2, "Type"

    const-string v3, "QQ"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :sswitch_4
    const-string v2, "Type"

    const-string v3, "Weibo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :sswitch_5
    const-string v2, "Type"

    const-string v3, "Browser"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0903b1 -> :sswitch_5
        0x7f0904dd -> :sswitch_1
        0x7f0904de -> :sswitch_3
        0x7f0904df -> :sswitch_2
        0x7f0904e2 -> :sswitch_0
        0x7f0904e3 -> :sswitch_4
    .end sparse-switch
.end method

.method public static dismissNoAnim(Landroid/support/v4/app/ag;)V
    .locals 4
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 104
    sget-object v2, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .line 105
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 108
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f1000b7

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 110
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 96
    sget-object v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .line 97
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;-><init>()V

    .line 100
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    :cond_0
    return-object v0
.end method

.method public static getBitValue(JI)I
    .locals 4
    .param p0, "source"    # J
    .param p2, "pos"    # I

    .prologue
    .line 114
    shr-long v0, p0, p2

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private setOnDismissListener(Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;)V
    .locals 0
    .param p1, "dismissListener"    # Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->dismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    .line 176
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCancel(Landroid/content/DialogInterface;)V

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->dismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->dismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;->onDismiss()V

    .line 172
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const/4 v0, 0x1

    const v1, 0x7f1000b2

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setStyle(II)V

    .line 183
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 205
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000b2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 206
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 212
    const v1, 0x7f0b017d

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0904d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mShareGroup:Landroid/widget/GridView;

    .line 214
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mShareGroup:Landroid/widget/GridView;

    new-instance v4, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment$a;-><init>(Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    const v1, 0x7f0904e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-wide v6, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->switcher:J

    invoke-static {v6, v7, v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getBitValue(JI)I

    move-result v1

    if-ne v1, v8, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v1, 0x7f0902f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-wide v6, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->switcher:J

    invoke-static {v6, v7, v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getBitValue(JI)I

    move-result v1

    if-ne v1, v8, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const v1, 0x7f0904dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-wide v6, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->switcher:J

    invoke-static {v6, v7, v8}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getBitValue(JI)I

    move-result v1

    if-ne v1, v8, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    const v1, 0x7f0904df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-wide v6, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->switcher:J

    const/4 v1, 0x2

    invoke-static {v6, v7, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getBitValue(JI)I

    move-result v1

    if-ne v1, v8, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    const v1, 0x7f0904de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-wide v6, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->switcher:J

    const/4 v1, 0x3

    invoke-static {v6, v7, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getBitValue(JI)I

    move-result v1

    if-ne v1, v8, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const v1, 0x7f0904e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-wide v6, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->switcher:J

    const/4 v1, 0x4

    invoke-static {v6, v7, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getBitValue(JI)I

    move-result v1

    if-ne v1, v8, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    const v1, 0x7f0903b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->switcher:J

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getBitValue(JI)I

    move-result v4

    if-ne v4, v8, :cond_6

    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    const v1, 0x7f0904dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 226
    return-object v0

    :cond_0
    move v1, v3

    .line 217
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 218
    goto :goto_1

    :cond_2
    move v1, v3

    .line 219
    goto :goto_2

    :cond_3
    move v1, v3

    .line 220
    goto :goto_3

    :cond_4
    move v1, v3

    .line 221
    goto :goto_4

    :cond_5
    move v1, v3

    .line 222
    goto :goto_5

    :cond_6
    move v2, v3

    .line 223
    goto :goto_6
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isShowing:Z

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->dismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->dismissListener:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment$OnDismissListener;->onDismiss()V

    .line 164
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 187
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 188
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v1, v2, 0xa

    .line 192
    .local v1, "width":I
    :goto_0
    const/4 v0, -0x2

    .line 193
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 194
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 195
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f1000b2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 198
    return-void

    .line 189
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->i()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v1, v2, 0x5

    goto :goto_0
.end method

.method public setClassData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cat"    # Ljava/lang/String;
    .param p2, "age"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mCat:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mAge:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "mThmbUrl"    # Ljava/lang/String;
    .param p2, "mTitle"    # Ljava/lang/String;
    .param p3, "mAbst"    # Ljava/lang/String;
    .param p4, "mPid"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 131
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mThmbUrl:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mTitle:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mAbst:Ljava/lang/String;

    .line 134
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mPid:Ljava/lang/String;

    .line 135
    iput p5, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mType:I

    .line 136
    return-void
.end method

.method public setShareUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "shareThmbUrl"    # Ljava/lang/String;
    .param p2, "shareUrl"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mShareThmbUrll:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mShareUrl:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSource"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->mSource:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setSwitch(J)V
    .locals 1
    .param p1, "switcher"    # J

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->switcher:J

    .line 123
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 146
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    sget-object v1, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 148
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 150
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method
