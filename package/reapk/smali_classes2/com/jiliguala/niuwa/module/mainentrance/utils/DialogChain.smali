.class public Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REVIEW_DIALOG:Ljava/lang/String; = "REVIEW_DIALOG"

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_DIALOG:Ljava/lang/String; = "UPDATE_DIALOG"

.field static dialogMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static fragmentManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/ag;",
            ">;"
        }
    .end annotation
.end field

.field static position:I

.field static priority:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    const-class v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REVIEW_DIALOG"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "UPDATE_DIALOG"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->priority:[Ljava/lang/String;

    .line 33
    sput v3, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->dialogMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDialogFragmentToChain(Landroid/support/v4/app/ac;Ljava/lang/String;Landroid/support/v4/app/ag;)V
    .locals 1
    .param p0, "dialogFragment"    # Landroid/support/v4/app/ac;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/ag;

    .prologue
    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->dialogMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    if-eqz p2, :cond_0

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->fragmentManagerRef:Ljava/lang/ref/WeakReference;

    .line 67
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->startToShow()V

    .line 68
    return-void
.end method

.method public static addDialogToChain(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->dialogMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->startToShow()V

    .line 53
    return-void
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I

    .line 39
    sget-object v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->dialogMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->fragmentManagerRef:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method

.method public static notifyDialogDismiss(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 76
    sget v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I

    .line 77
    invoke-static {}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->startToShow()V

    .line 78
    return-void
.end method

.method private static startToShow()V
    .locals 11

    .prologue
    .line 87
    sget v8, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I

    sget-object v9, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->priority:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_0

    sget-object v8, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->dialogMap:Ljava/util/WeakHashMap;

    invoke-virtual {v8}, Ljava/util/WeakHashMap;->size()I

    move-result v8

    sget-object v9, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->priority:[Ljava/lang/String;

    array-length v9, v9

    if-ne v8, v9, :cond_0

    .line 89
    sget-object v8, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->dialogMap:Ljava/util/WeakHashMap;

    sget-object v9, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->priority:[Ljava/lang/String;

    sget v10, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "dialogObj":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 93
    instance-of v8, v2, Landroid/app/Dialog;

    if-eqz v8, :cond_1

    move-object v1, v2

    .line 97
    check-cast v1, Landroid/app/Dialog;

    .line 99
    .local v1, "dialog":Landroid/app/Dialog;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 100
    sget v8, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 101
    .restart local v1    # "dialog":Landroid/app/Dialog;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "bte":Landroid/view/WindowManager$BadTokenException;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    .end local v0    # "bte":Landroid/view/WindowManager$BadTokenException;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_1
    instance-of v8, v2, Landroid/support/v4/app/ac;

    if-eqz v8, :cond_0

    .line 112
    sget-object v8, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->fragmentManagerRef:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->fragmentManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/ag;

    .local v3, "fm":Landroid/support/v4/app/ag;
    if-eqz v3, :cond_0

    move-object v4, v2

    .line 113
    check-cast v4, Landroid/support/v4/app/ac;

    .line 114
    .local v4, "fragment":Landroid/support/v4/app/ac;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "fragment_tag":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v6

    .line 117
    .local v6, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v4}, Landroid/support/v4/app/ac;->isAdded()Z

    move-result v8

    if-nez v8, :cond_0

    .line 118
    invoke-virtual {v6, v4, v5}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 119
    invoke-virtual {v6}, Landroid/support/v4/app/an;->i()I

    .line 120
    sget v8, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 122
    .end local v6    # "ft":Landroid/support/v4/app/an;
    :catch_1
    move-exception v7

    .line 126
    .local v7, "ise":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    .end local v3    # "fm":Landroid/support/v4/app/ag;
    .end local v4    # "fragment":Landroid/support/v4/app/ac;
    .end local v5    # "fragment_tag":Ljava/lang/String;
    .end local v7    # "ise":Ljava/lang/Exception;
    :cond_2
    sget v8, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->position:I

    .line 133
    invoke-static {}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->startToShow()V

    goto :goto_0
.end method
