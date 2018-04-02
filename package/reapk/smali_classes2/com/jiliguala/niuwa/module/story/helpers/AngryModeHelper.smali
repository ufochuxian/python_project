.class public Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;
    }
.end annotation


# static fields
.field static ANGRY_MODE_TABS:[Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a; = null

.field static CHECKBOXES:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MENU_ENABLED:Z = true

.field private static final DEFAULT_ORIENTATION_ENABLED:Z = true

.field private static final DEFAULT_PROXIMITY_ENABLED:Z = false

.field private static final DEFAULT_SHAKE_ENABLED:Z = true

.field private static final ORIENTATION_DELAY_SECONDS:I = 0x1

.field private static final RECENT_FORCES_COUNT:I = 0xa


# instance fields
.field private ACCELEROMETER_TITLES:[Ljava/lang/String;

.field private ORIENTATION_TITLES:[Ljava/lang/String;

.field private PROXIMITY_TITLES:[Ljava/lang/String;

.field private final mAccelerometer:Landroid/hardware/Sensor;

.field private final mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

.field private mAngryMode:Z

.field private mDictionary:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNotFacingDown:J

.field private mListView:Landroid/widget/ExpandableListView;

.field private mOrientationEnabled:Z

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private mRecentForces:[F

.field private mRecentForcesPtr:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeEnabled:Z

.field private mSwitchEvnShow:Z

.field private switchEnvDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    new-instance v1, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    const-string v2, "DebugMode"

    const v3, 0x7f0b0058

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    const-string v2, "Authentication"

    const v3, 0x7f0b0056

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    const-string v3, "Session"

    const v4, 0x7f0b005c

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    const-string v3, "Publishing"

    const v4, 0x7f0b005b

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    const-string v3, "Memory"

    const v4, 0x7f0b005a

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    const-string v3, "Caches"

    const v4, 0x7f0b0057

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    const-string v3, "Live Data"

    const v4, 0x7f0b0059

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    const-string v3, "Support"

    const v4, 0x7f0b005d

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    const-string v3, "Angry Mode Activation"

    const v4, 0x7f0b0055

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->ANGRY_MODE_TABS:[Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->CHECKBOXES:Landroid/util/SparseArray;

    .line 69
    sget-object v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->CHECKBOXES:Landroid/util/SparseArray;

    const v1, 0x7f090127

    new-instance v2, Landroid/util/Pair;

    const-string v3, "Xn"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->CHECKBOXES:Landroid/util/SparseArray;

    const v1, 0x7f090129

    new-instance v2, Landroid/util/Pair;

    const-string v3, "lO"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->CHECKBOXES:Landroid/util/SparseArray;

    const v1, 0x7f090128

    new-instance v2, Landroid/util/Pair;

    const-string v3, "PP"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->CHECKBOXES:Landroid/util/SparseArray;

    const v1, 0x7f09012a

    new-instance v2, Landroid/util/Pair;

    const-string v3, "aD"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mRecentForces:[F

    .line 81
    iput v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mRecentForcesPtr:I

    .line 84
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mAngryMode:Z

    .line 85
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Did it get dark?"

    aput-object v1, v0, v2

    const-string v1, "Your hand is on my face"

    aput-object v1, v0, v3

    const-string v1, "These are not the droids you are looking for"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->PROXIMITY_TITLES:[Ljava/lang/String;

    .line 87
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Hold on tight now"

    aput-object v1, v0, v2

    const-string v1, "Shaken, not stirred"

    aput-object v1, v0, v3

    const-string v1, "Like a polaroid picture"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->ACCELEROMETER_TITLES:[Ljava/lang/String;

    .line 89
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "That\'s a nice floor"

    aput-object v1, v0, v2

    const-string v1, "Is there something on my back?"

    aput-object v1, v0, v3

    const-string v1, "FYI, not a coaster"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->ORIENTATION_TITLES:[Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .line 109
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mAccelerometer:Landroid/hardware/Sensor;

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mProximitySensor:Landroid/hardware/Sensor;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->exitAngryMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->refresh()V

    return-void
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mSwitchEvnShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->restartApp()V

    return-void
.end method

.method private chooseRandom([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, p1, v0

    return-object v0
.end method

.method private configureCheckBox(Landroid/widget/CheckBox;)V
    .locals 7
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 411
    .local v3, "prefs":Landroid/content/SharedPreferences;
    sget-object v4, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->CHECKBOXES:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 412
    .local v2, "pref":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v2, :cond_0

    .line 413
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognised checkbox: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 414
    :cond_0
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 415
    .local v1, "key":Ljava/lang/String;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 416
    .local v0, "currentValue":Z
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 417
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 418
    return-void
.end method

.method private configureViewRecursively(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 386
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mDictionary:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 387
    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mDictionary:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_0
    instance-of v3, p1, Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 391
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    :cond_1
    instance-of v3, p1, Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 395
    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->configureCheckBox(Landroid/widget/CheckBox;)V

    .line 398
    :cond_2
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 399
    check-cast v2, Landroid/view/ViewGroup;

    .line 401
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 402
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 403
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->configureViewRecursively(Landroid/view/View;)V

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method private exitAngryMode()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mAngryMode:Z

    .line 374
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->startMonitoring()V

    .line 375
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getStore(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 555
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 556
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->updateDictionary()V

    .line 557
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mListView:Landroid/widget/ExpandableListView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->configureViewRecursively(Landroid/view/View;)V

    .line 558
    return-void
.end method

.method private restartApp()V
    .locals 10

    .prologue
    .line 527
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    const-class v5, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    .local v2, "mStartActivity":Landroid/content/Intent;
    const v1, 0x1e240

    .line 529
    .local v1, "mPendingIntentId":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    const/high16 v5, 0x10000000

    invoke-static {v4, v1, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 530
    .local v0, "mPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 531
    .local v3, "mgr":Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 533
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 534
    return-void
.end method

.method private showEnvSwitchDlg()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 479
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mSwitchEvnShow:Z

    if-nez v4, :cond_1

    .line 480
    const-string v4, "D_M"

    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v0

    .line 481
    .local v0, "current_mode":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "tips":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_0
    new-instance v1, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$5;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$5;-><init>(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;I)V

    .line 517
    .local v1, "dInterface":Lcom/jiliguala/niuwa/common/util/h$a;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->switchEnvDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->switchEnvDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 518
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->switchEnvDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 520
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    const v5, 0x7f0f0088

    const v6, 0x7f0f0064

    invoke-static {v4, v3, v5, v6, v1}, Lcom/jiliguala/niuwa/common/util/h;->a(Landroid/content/Context;Ljava/lang/String;IILcom/jiliguala/niuwa/common/util/h$a;)Landroid/app/Dialog;

    move-result-object v2

    .line 521
    .local v2, "switchEnvDialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 522
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mSwitchEvnShow:Z

    .line 524
    .end local v0    # "current_mode":I
    .end local v1    # "dInterface":Lcom/jiliguala/niuwa/common/util/h$a;
    .end local v2    # "switchEnvDialog":Landroid/app/Dialog;
    .end local v3    # "tips":Ljava/lang/String;
    :cond_1
    return-void

    .line 484
    .restart local v0    # "current_mode":I
    .restart local v3    # "tips":Ljava/lang/String;
    :pswitch_0
    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "DEV"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 485
    goto :goto_0

    .line 487
    :pswitch_1
    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "PROD"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDictionary()V
    .locals 59

    .prologue
    .line 194
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 196
    .local v3, "dictionary":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v34

    check-cast v34, Lcom/jiliguala/niuwa/MyApplication;

    .line 197
    .local v34, "app":Lcom/jiliguala/niuwa/MyApplication;
    invoke-virtual/range {v34 .. v34}, Lcom/jiliguala/niuwa/MyApplication;->getSupportHelper()Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;

    move-result-object v51

    .line 201
    .local v51, "supportHelper":Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;
    const-string v2, "D_M"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v37

    .line 202
    .local v37, "current_mode":I
    const-string v58, ""

    .line 203
    .local v58, "tips":Ljava/lang/String;
    packed-switch v37, :pswitch_data_0

    .line 211
    :goto_0
    const v2, 0x7f0901a4

    move-object/from16 v0, v58

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v52

    .line 216
    .local v52, "max_heap":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v38

    .line 217
    .local v38, "current_heap":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v42

    .line 218
    .local v42, "free_heap":J
    sub-long v30, v38, v42

    .line 219
    .local v30, "actual_used":J
    invoke-virtual/range {v34 .. v34}, Lcom/jiliguala/niuwa/MyApplication;->getVolleyManager()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->getInMemoryImageCacheSize()J

    move-result-wide v46

    .line 220
    .local v46, "image_cache_size":J
    sub-long v54, v30, v46

    .line 222
    .local v54, "other_allocations":J
    move-wide/from16 v0, v38

    long-to-double v4, v0

    move-wide/from16 v0, v52

    long-to-double v6, v0

    div-double v40, v4, v6

    .line 223
    .local v40, "current_heap_percent":D
    move-wide/from16 v0, v42

    long-to-double v4, v0

    move-wide/from16 v0, v52

    long-to-double v6, v0

    div-double v44, v4, v6

    .line 224
    .local v44, "free_heap_percent":D
    move-wide/from16 v0, v30

    long-to-double v4, v0

    move-wide/from16 v0, v52

    long-to-double v6, v0

    div-double v32, v4, v6

    .line 225
    .local v32, "actual_used_percent":D
    move-wide/from16 v0, v46

    long-to-double v4, v0

    move-wide/from16 v0, v52

    long-to-double v6, v0

    div-double v48, v4, v6

    .line 226
    .local v48, "image_cache_size_percent":D
    move-wide/from16 v0, v54

    long-to-double v4, v0

    move-wide/from16 v0, v52

    long-to-double v6, v0

    div-double v56, v4, v6

    .line 228
    .local v56, "other_allocations_percent":D
    const v2, 0x7f090335

    invoke-static/range {v52 .. v53}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatBytesAsMegabytes(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    const v2, 0x7f09032f

    invoke-static/range {v38 .. v39}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatBytesAsMegabytes(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    const v2, 0x7f090331

    invoke-static/range {v42 .. v43}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatBytesAsMegabytes(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    const v2, 0x7f09032d

    invoke-static/range {v30 .. v31}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatBytesAsMegabytes(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    const v2, 0x7f090333

    invoke-static/range {v46 .. v47}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatBytesAsMegabytes(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    const v2, 0x7f090336

    invoke-static/range {v54 .. v55}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatBytesAsMegabytes(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    const v2, 0x7f090330

    invoke-static/range {v40 .. v41}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatPercentageInBrackets(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    const v2, 0x7f090332

    invoke-static/range {v44 .. v45}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatPercentageInBrackets(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    const v2, 0x7f09032e

    invoke-static/range {v32 .. v33}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatPercentageInBrackets(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    const v2, 0x7f090334

    invoke-static/range {v48 .. v49}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatPercentageInBrackets(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    const v2, 0x7f090337

    invoke-static/range {v56 .. v57}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatPercentageInBrackets(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    const v2, 0x7f0904c8

    const-string v4, "%d (%d today)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 245
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    const v2, 0x7f0904c5

    const-string v4, "%d (%d today)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 247
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    const v2, 0x7f0904c6

    const-string v4, "%d (%d today)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 249
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    const v2, 0x7f0904c7

    invoke-virtual/range {v34 .. v34}, Lcom/jiliguala/niuwa/MyApplication;->getOnceManager()Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->countOnces()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    const v2, 0x7f0904c4

    invoke-virtual/range {v34 .. v34}, Lcom/jiliguala/niuwa/MyApplication;->getInstallDate()Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatDateAsYMDHM(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    const v2, 0x7f090547

    invoke-virtual/range {v51 .. v51}, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->getSupportString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    invoke-virtual/range {v34 .. v34}, Lcom/jiliguala/niuwa/MyApplication;->getAuthenticationManager()Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    move-result-object v35

    .line 263
    .local v35, "authManager":Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;
    invoke-virtual/range {v35 .. v35}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const v2, 0x7f09007f

    invoke-virtual/range {v35 .. v35}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    const v2, 0x7f090080

    invoke-virtual/range {v35 .. v35}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    :goto_1
    const v2, 0x7f09007e

    invoke-virtual/range {v34 .. v34}, Lcom/jiliguala/niuwa/MyApplication;->getDeviceIdentityManager()Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;

    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    invoke-virtual/range {v35 .. v35}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;->getUserCredentials()Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$Credentials;

    move-result-object v36

    .line 273
    .local v36, "credentials":Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$Credentials;
    const v4, 0x7f09007d

    if-nez v36, :cond_1

    const-string v2, "[anonymous]"

    :goto_2
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    const v4, 0x7f090413

    sget-boolean v2, Lcom/jiliguala/niuwa/module/story/helpers/PublishingHelper;->sShowPublished:Z

    if-eqz v2, :cond_2

    const-string v2, "Yes"

    :goto_3
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    const v4, 0x7f090414

    sget-boolean v2, Lcom/jiliguala/niuwa/module/story/helpers/PublishingHelper;->sShowUnpublished:Z

    if-eqz v2, :cond_3

    const-string v2, "Yes"

    :goto_4
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    invoke-virtual/range {v34 .. v34}, Lcom/jiliguala/niuwa/MyApplication;->getLiveDataManager()Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->getStatistics()Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;

    move-result-object v50

    .line 283
    .local v50, "liveStats":Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;
    const v2, 0x7f0902e6

    move-object/from16 v0, v50

    iget v4, v0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    const v2, 0x7f0902e2

    move-object/from16 v0, v50

    iget v4, v0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_expired:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    const v2, 0x7f0902e3

    move-object/from16 v0, v50

    iget v4, v0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_failed:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    const v2, 0x7f0902e4

    move-object/from16 v0, v50

    iget v4, v0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_loading:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    const v2, 0x7f0902e5

    move-object/from16 v0, v50

    iget v4, v0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_success:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    invoke-virtual/range {v34 .. v34}, Lcom/jiliguala/niuwa/MyApplication;->getVolleyManager()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->getInMemoryImageCacheStatistics()Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;

    move-result-object v8

    .line 292
    .local v8, "thumbStats":Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    invoke-virtual/range {v34 .. v34}, Lcom/jiliguala/niuwa/MyApplication;->getAssetCache()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->getStatistics()Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;

    move-result-object v15

    .line 293
    .local v15, "assetStates":Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    invoke-virtual/range {v34 .. v34}, Lcom/jiliguala/niuwa/MyApplication;->getAssetStore()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->getStatistics()Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;

    move-result-object v22

    .line 294
    .local v22, "offlineStats":Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    invoke-virtual/range {v34 .. v34}, Lcom/jiliguala/niuwa/MyApplication;->getPreloadLibrary()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->getStatistics()Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;

    move-result-object v29

    .line 296
    .local v29, "preloadLibraryStats":Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    const v4, 0x7f0900f7

    const v5, 0x7f0900f6

    const v6, 0x7f0900f4

    const v7, 0x7f0900f5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->updateDictionaryWithCacheStatistics(Landroid/util/SparseArray;IIIILcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;)V

    .line 299
    const v11, 0x7f0900eb

    const v12, 0x7f0900ea

    const v13, 0x7f0900e8

    const v14, 0x7f0900e9

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v9 .. v15}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->updateDictionaryWithCacheStatistics(Landroid/util/SparseArray;IIIILcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;)V

    .line 302
    const v18, 0x7f0900ef

    const v19, 0x7f0900ee

    const v20, 0x7f0900ec

    const v21, 0x7f0900ed

    move-object/from16 v16, p0

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v22}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->updateDictionaryWithCacheStatistics(Landroid/util/SparseArray;IIIILcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;)V

    .line 305
    const v25, 0x7f0900f3

    const v26, 0x7f0900f2

    const v27, 0x7f0900f0

    const v28, 0x7f0900f1

    move-object/from16 v23, p0

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v29}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->updateDictionaryWithCacheStatistics(Landroid/util/SparseArray;IIIILcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;)V

    .line 308
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mDictionary:Landroid/util/SparseArray;

    .line 309
    return-void

    .line 205
    .end local v8    # "thumbStats":Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    .end local v15    # "assetStates":Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    .end local v22    # "offlineStats":Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    .end local v29    # "preloadLibraryStats":Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    .end local v30    # "actual_used":J
    .end local v32    # "actual_used_percent":D
    .end local v35    # "authManager":Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;
    .end local v36    # "credentials":Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$Credentials;
    .end local v38    # "current_heap":J
    .end local v40    # "current_heap_percent":D
    .end local v42    # "free_heap":J
    .end local v44    # "free_heap_percent":D
    .end local v46    # "image_cache_size":J
    .end local v48    # "image_cache_size_percent":D
    .end local v50    # "liveStats":Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;
    .end local v52    # "max_heap":J
    .end local v54    # "other_allocations":J
    .end local v56    # "other_allocations_percent":D
    :pswitch_0
    const-string v58, "PROD"

    .line 206
    goto/16 :goto_0

    .line 208
    :pswitch_1
    const-string v58, "DEV"

    goto/16 :goto_0

    .line 267
    .restart local v30    # "actual_used":J
    .restart local v32    # "actual_used_percent":D
    .restart local v35    # "authManager":Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;
    .restart local v38    # "current_heap":J
    .restart local v40    # "current_heap_percent":D
    .restart local v42    # "free_heap":J
    .restart local v44    # "free_heap_percent":D
    .restart local v46    # "image_cache_size":J
    .restart local v48    # "image_cache_size_percent":D
    .restart local v52    # "max_heap":J
    .restart local v54    # "other_allocations":J
    .restart local v56    # "other_allocations_percent":D
    :cond_0
    const v2, 0x7f09007f

    const-string v4, "-"

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    const v2, 0x7f090080

    const-string v4, "NOT AUTHENTICATED"

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 273
    .restart local v36    # "credentials":Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$Credentials;
    :cond_1
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$Credentials;->email:Ljava/lang/String;

    goto/16 :goto_2

    .line 277
    :cond_2
    const-string v2, "No"

    goto/16 :goto_3

    .line 278
    :cond_3
    const-string v2, "No"

    goto/16 :goto_4

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDictionaryWithCacheStatistics(Landroid/util/SparseArray;IIIILcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;)V
    .locals 8
    .param p2, "countId"    # I
    .param p3, "maxSizeId"    # I
    .param p4, "sizeId"    # I
    .param p5, "percentId"    # I
    .param p6, "cacheStatistics"    # Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;IIII",
            "Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "dictionary":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p6}, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;->getSize()J

    move-result-wide v2

    .line 314
    .local v2, "size":J
    invoke-virtual {p6}, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;->getMaxSize()J

    move-result-wide v0

    .line 316
    .local v0, "maxSize":J
    invoke-virtual {p6}, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;->getObjectCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatBytesAsMegabytes(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatBytesAsMegabytes(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p4, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    long-to-double v4, v2

    long-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->formatPercentageInBrackets(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    return-void
.end method


# virtual methods
.method public configureAngryModeTab(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->configureViewRecursively(Landroid/view/View;)V

    .line 379
    return-void
.end method

.method public enterAngryMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 323
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mAngryMode:Z

    .line 327
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->updateDictionary()V

    .line 329
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 330
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {v2, v3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mListView:Landroid/widget/ExpandableListView;

    .line 331
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mListView:Landroid/widget/ExpandableListView;

    new-instance v3, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeListAdapter;

    invoke-direct {v3, v1, p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeListAdapter;-><init>(Landroid/view/LayoutInflater;Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 334
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Continue"

    new-instance v4, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$3;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$3;-><init>(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V

    .line 335
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u21bb"

    const/4 v4, 0x0

    .line 340
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Kill App"

    new-instance v4, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$2;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$2;-><init>(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$1;-><init>(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V

    .line 345
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 353
    .local v0, "d":Landroid/app/AlertDialog;
    new-instance v2, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;

    invoke-direct {v2, p0, v0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;-><init>(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 369
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->stopMonitoring()V

    .line 370
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "newValue"    # Z

    .prologue
    .line 539
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->CHECKBOXES:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 540
    sget-object v3, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->CHECKBOXES:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 541
    .local v2, "id":I
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 542
    sget-object v3, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->CHECKBOXES:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 543
    .local v0, "box":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 539
    .end local v0    # "box":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    .end local v2    # "id":I
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 476
    :goto_0
    return-void

    .line 430
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->refresh()V

    goto :goto_0

    .line 435
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/MyApplication;->getOnceManager()Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->resetOnces()V

    .line 436
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 437
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->refresh()V

    goto :goto_0

    .line 442
    :sswitch_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 446
    :sswitch_3
    sput-boolean v2, Lcom/jiliguala/niuwa/module/story/helpers/PublishingHelper;->sShowUnpublished:Z

    .line 447
    sput-boolean v2, Lcom/jiliguala/niuwa/module/story/helpers/PublishingHelper;->sShowPublished:Z

    .line 448
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->refresh()V

    goto :goto_0

    .line 452
    :sswitch_4
    sput-boolean v3, Lcom/jiliguala/niuwa/module/story/helpers/PublishingHelper;->sShowUnpublished:Z

    .line 453
    sput-boolean v2, Lcom/jiliguala/niuwa/module/story/helpers/PublishingHelper;->sShowPublished:Z

    .line 454
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->refresh()V

    goto :goto_0

    .line 458
    :sswitch_5
    sput-boolean v2, Lcom/jiliguala/niuwa/module/story/helpers/PublishingHelper;->sShowUnpublished:Z

    .line 459
    sput-boolean v3, Lcom/jiliguala/niuwa/module/story/helpers/PublishingHelper;->sShowPublished:Z

    .line 460
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->refresh()V

    goto :goto_0

    .line 465
    :sswitch_6
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/MyApplication;->getAssetCache()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->purge()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->refresh()V

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 473
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_7
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->showEnvSwitchDlg()V

    goto :goto_0

    .line 426
    :sswitch_data_0
    .sparse-switch
        0x7f0900d6 -> :sswitch_6
        0x7f0900dd -> :sswitch_3
        0x7f0900de -> :sswitch_4
        0x7f0900df -> :sswitch_5
        0x7f0900e1 -> :sswitch_2
        0x7f0900e2 -> :sswitch_0
        0x7f0900e3 -> :sswitch_1
        0x7f09054d -> :sswitch_7
    .end sparse-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 139
    iget-boolean v7, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mAngryMode:Z

    if-eqz v7, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mAccelerometer:Landroid/hardware/Sensor;

    if-ne v7, v8, :cond_6

    .line 143
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 145
    .local v5, "values":[F
    iget-boolean v7, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mShakeEnabled:Z

    if-eqz v7, :cond_3

    .line 146
    aget v7, v5, v6

    aget v8, v5, v6

    mul-float/2addr v7, v8

    aget v8, v5, v3

    aget v9, v5, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aget v8, v5, v10

    aget v9, v5, v10

    mul-float/2addr v8, v9

    add-float v1, v7, v8

    .line 149
    .local v1, "force":F
    iget v7, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mRecentForcesPtr:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mRecentForcesPtr:I

    .line 150
    iget v7, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mRecentForcesPtr:I

    rem-int/lit8 v7, v7, 0xa

    iput v7, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mRecentForcesPtr:I

    .line 151
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mRecentForces:[F

    iget v8, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mRecentForcesPtr:I

    aput v1, v7, v8

    .line 154
    const/4 v4, 0x0

    .line 155
    .local v4, "totalForce":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v7, 0xa

    if-ge v2, v7, :cond_2

    .line 156
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mRecentForces:[F

    aget v7, v7, v2

    add-float/2addr v4, v7

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    :cond_2
    const/high16 v7, 0x41200000    # 10.0f

    div-float v0, v4, v7

    .line 160
    .local v0, "averageForce":F
    const/high16 v7, 0x437a0000    # 250.0f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_3

    .line 161
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->ACCELEROMETER_TITLES:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->chooseRandom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->enterAngryMode(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    .end local v0    # "averageForce":F
    .end local v1    # "force":F
    .end local v2    # "i":I
    .end local v4    # "totalForce":F
    :cond_3
    iget-boolean v7, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mOrientationEnabled:Z

    if-eqz v7, :cond_0

    .line 167
    aget v7, v5, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v11

    if-gez v7, :cond_4

    aget v7, v5, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v11

    if-gez v7, :cond_4

    aget v7, v5, v10

    const/high16 v8, -0x3f000000    # -8.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 169
    .local v3, "isFacingDown":Z
    :goto_2
    if-nez v3, :cond_5

    .line 170
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v6, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mLastNotFacingDown:J

    goto :goto_0

    .end local v3    # "isFacingDown":Z
    :cond_4
    move v3, v6

    .line 167
    goto :goto_2

    .line 172
    .restart local v3    # "isFacingDown":Z
    :cond_5
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v8, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mLastNotFacingDown:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x3b9aca00

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 173
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->ORIENTATION_TITLES:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->chooseRandom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->enterAngryMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    .end local v3    # "isFacingDown":Z
    .end local v5    # "values":[F
    :cond_6
    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mProximitySensor:Landroid/hardware/Sensor;

    if-ne v7, v8, :cond_0

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v7, v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 180
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->PROXIMITY_TITLES:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->chooseRandom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->enterAngryMode(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startMonitoring()V
    .locals 6

    .prologue
    const v5, 0x186a0

    const/4 v4, 0x1

    .line 115
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "PP"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 118
    .local v1, "proximityEnabled":Z
    const-string v2, "lO"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mShakeEnabled:Z

    .line 119
    const-string v2, "Xn"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mOrientationEnabled:Z

    .line 121
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mShakeEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mOrientationEnabled:Z

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v2, p0, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 123
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mRecentForces:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 124
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mLastNotFacingDown:J

    .line 127
    :cond_1
    if-eqz v1, :cond_2

    .line 128
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, p0, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 131
    :cond_2
    return-void
.end method

.method public stopMonitoring()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 135
    return-void
.end method
