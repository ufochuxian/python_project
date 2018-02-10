.class public Lorg/chromium/device/gamepad/GamepadList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/gamepad/GamepadList$LazyHolder;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_GAMEPADS:I = 0x4


# instance fields
.field private mAttachedToWindowCounter:I

.field private final mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

.field private mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsGamepadAPIActive:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/device/gamepad/GamepadList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/device/gamepad/GamepadList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/device/gamepad/GamepadDevice;

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    .line 39
    new-instance v0, Lorg/chromium/device/gamepad/GamepadList$1;

    invoke-direct {v0, p0}, Lorg/chromium/device/gamepad/GamepadList$1;-><init>(Lorg/chromium/device/gamepad/GamepadList;)V

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/device/gamepad/GamepadList$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/device/gamepad/GamepadList$1;

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadList;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/device/gamepad/GamepadList;I)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/device/gamepad/GamepadList;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->onInputDeviceChangedImpl(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/device/gamepad/GamepadList;I)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/device/gamepad/GamepadList;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->onInputDeviceRemovedImpl(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/device/gamepad/GamepadList;I)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/device/gamepad/GamepadList;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->onInputDeviceAddedImpl(I)V

    return-void
.end method

.method private attachedToWindow(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iget v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mAttachedToWindowCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mAttachedToWindowCounter:I

    if-nez v0, :cond_0

    .line 83
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    .line 84
    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadList;->initializeDevices()V

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 90
    :cond_0
    return-void

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private detachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    iget v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mAttachedToWindowCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mAttachedToWindowCounter:I

    if-nez v1, :cond_1

    .line 103
    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 109
    iput-object v4, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    .line 111
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 107
    .restart local v0    # "i":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 175
    invoke-static {p0}, Lorg/chromium/device/gamepad/GamepadList;->isGamepadEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/device/gamepad/GamepadList;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 166
    sget-boolean v0, Lorg/chromium/device/gamepad/GamepadList;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getDeviceById(I)Lorg/chromium/device/gamepad/GamepadDevice;
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    .line 155
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 156
    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    aget-object v0, v2, v1

    .line 157
    .local v0, "gamepad":Lorg/chromium/device/gamepad/GamepadDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/device/gamepad/GamepadDevice;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 161
    .end local v0    # "gamepad":Lorg/chromium/device/gamepad/GamepadDevice;
    :goto_1
    return-object v0

    .line 155
    .restart local v0    # "gamepad":Lorg/chromium/device/gamepad/GamepadDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "gamepad":Lorg/chromium/device/gamepad/GamepadDevice;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getDeviceCount()I
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 140
    invoke-direct {p0, v1}, Lorg/chromium/device/gamepad/GamepadList;->getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_1
    return v0
.end method

.method private getGamepadForEvent(Landroid/view/InputEvent;)Lorg/chromium/device/gamepad/GamepadDevice;
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/device/gamepad/GamepadList;->getDeviceById(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lorg/chromium/device/gamepad/GamepadList;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList$LazyHolder;->access$300()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    return-object v0
.end method

.method private getNextAvailableIndex()I
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 214
    invoke-direct {p0, v0}, Lorg/chromium/device/gamepad/GamepadList;->getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 219
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 213
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private grabGamepadData(J)V
    .locals 13
    .param p1, "webGamepadsPtr"    # J

    .prologue
    .line 286
    iget-object v12, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 287
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v4, v1, :cond_1

    .line 288
    :try_start_0
    invoke-direct {p0, v4}, Lorg/chromium/device/gamepad/GamepadList;->getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v0

    .line 289
    .local v0, "device":Lorg/chromium/device/gamepad/GamepadDevice;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lorg/chromium/device/gamepad/GamepadDevice;->updateButtonsAndAxesMapping()V

    .line 291
    invoke-virtual {v0}, Lorg/chromium/device/gamepad/GamepadDevice;->isStandardGamepad()Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0}, Lorg/chromium/device/gamepad/GamepadDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/chromium/device/gamepad/GamepadDevice;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v0}, Lorg/chromium/device/gamepad/GamepadDevice;->getAxes()[F

    move-result-object v10

    invoke-virtual {v0}, Lorg/chromium/device/gamepad/GamepadDevice;->getButtons()[F

    move-result-object v11

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v11}, Lorg/chromium/device/gamepad/GamepadList;->nativeSetGamepadData(JIZZLjava/lang/String;J[F[F)V

    .line 287
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 295
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v11}, Lorg/chromium/device/gamepad/GamepadList;->nativeSetGamepadData(JIZZLjava/lang/String;J[F[F)V

    goto :goto_1

    .line 298
    .end local v0    # "device":Lorg/chromium/device/gamepad/GamepadDevice;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    return-void
.end method

.method private handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 181
    :try_start_0
    iget-boolean v3, p0, Lorg/chromium/device/gamepad/GamepadList;->mIsGamepadAPIActive:Z

    if-nez v3, :cond_0

    monitor-exit v2

    .line 184
    :goto_0
    return v1

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->getGamepadForEvent(Landroid/view/InputEvent;)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v0

    .line 183
    .local v0, "gamepad":Lorg/chromium/device/gamepad/GamepadDevice;
    if-nez v0, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 185
    .end local v0    # "gamepad":Lorg/chromium/device/gamepad/GamepadDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 184
    .restart local v0    # "gamepad":Lorg/chromium/device/gamepad/GamepadDevice;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/chromium/device/gamepad/GamepadDevice;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    :try_start_0
    iget-boolean v3, p0, Lorg/chromium/device/gamepad/GamepadList;->mIsGamepadAPIActive:Z

    if-nez v3, :cond_0

    monitor-exit v2

    .line 202
    :goto_0
    return v1

    .line 200
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->getGamepadForEvent(Landroid/view/InputEvent;)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v0

    .line 201
    .local v0, "gamepad":Lorg/chromium/device/gamepad/GamepadDevice;
    if-nez v0, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 203
    .end local v0    # "gamepad":Lorg/chromium/device/gamepad/GamepadDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 202
    .restart local v0    # "gamepad":Lorg/chromium/device/gamepad/GamepadDevice;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/chromium/device/gamepad/GamepadDevice;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private initializeDevices()V
    .locals 4

    .prologue
    .line 60
    iget-object v3, p0, Lorg/chromium/device/gamepad/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v3}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 61
    .local v0, "deviceIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 62
    aget v3, v0, v1

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 64
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-static {v2}, Lorg/chromium/device/gamepad/GamepadList;->isGamepadDevice(Landroid/view/InputDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-direct {p0, v2}, Lorg/chromium/device/gamepad/GamepadList;->registerGamepad(Landroid/view/InputDevice;)Z

    .line 61
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    return-void
.end method

.method private isDeviceConnected(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 148
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGamepadAPIActive()Z
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/device/gamepad/GamepadList;->mIsGamepadAPIActive:Z

    return v0
.end method

.method private static isGamepadDevice(Landroid/view/InputDevice;)Z
    .locals 3
    .param p0, "inputDevice"    # Landroid/view/InputDevice;

    .prologue
    const v2, 0x1000010

    const/4 v0, 0x0

    .line 239
    if-nez p0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGamepadEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 267
    .local v0, "keyCode":I
    packed-switch v0, :pswitch_data_0

    .line 276
    invoke-static {v0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v1

    :goto_0
    return v1

    .line 274
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isGamepadEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v1, 0x1000010

    .line 259
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeSetGamepadData(JIZZLjava/lang/String;J[F[F)V
.end method

.method public static onAttachedToWindow(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    sget-boolean v0, Lorg/chromium/device/gamepad/GamepadList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_0
    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/device/gamepad/GamepadList;->attachedToWindow(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public static onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 97
    sget-boolean v0, Lorg/chromium/device/gamepad/GamepadList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_0
    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0}, Lorg/chromium/device/gamepad/GamepadList;->detachedFromWindow()V

    .line 99
    return-void
.end method

.method public static onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 193
    invoke-static {p0}, Lorg/chromium/device/gamepad/GamepadList;->isGamepadEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/device/gamepad/GamepadList;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private onInputDeviceAddedImpl(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    .line 124
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 125
    .local v0, "inputDevice":Landroid/view/InputDevice;
    invoke-static {v0}, Lorg/chromium/device/gamepad/GamepadList;->isGamepadDevice(Landroid/view/InputDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    invoke-direct {p0, v0}, Lorg/chromium/device/gamepad/GamepadList;->registerGamepad(Landroid/view/InputDevice;)Z

    .line 128
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onInputDeviceChangedImpl(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 115
    return-void
.end method

.method private onInputDeviceRemovedImpl(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->unregisterGamepad(I)V

    .line 120
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerGamepad(Landroid/view/InputDevice;)Z
    .locals 3
    .param p1, "inputDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 223
    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadList;->getNextAvailableIndex()I

    move-result v1

    .line 224
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    .line 228
    :goto_0
    return v2

    .line 226
    :cond_0
    new-instance v0, Lorg/chromium/device/gamepad/GamepadDevice;

    invoke-direct {v0, v1, p1}, Lorg/chromium/device/gamepad/GamepadDevice;-><init>(ILandroid/view/InputDevice;)V

    .line 227
    .local v0, "gamepad":Lorg/chromium/device/gamepad/GamepadDevice;
    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    aput-object v0, v2, v1

    .line 228
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static setGamepadAPIActive(Z)V
    .locals 1
    .param p0, "isActive"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/device/gamepad/GamepadList;->setIsGamepadActive(Z)V

    .line 304
    return-void
.end method

.method private setIsGamepadActive(Z)V
    .locals 4
    .param p1, "isGamepadActive"    # Z

    .prologue
    .line 307
    iget-object v3, p0, Lorg/chromium/device/gamepad/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 308
    :try_start_0
    iput-boolean p1, p0, Lorg/chromium/device/gamepad/GamepadList;->mIsGamepadAPIActive:Z

    .line 309
    if-eqz p1, :cond_1

    .line 310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 311
    invoke-direct {p0, v1}, Lorg/chromium/device/gamepad/GamepadList;->getDevice(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v0

    .line 312
    .local v0, "gamepadDevice":Lorg/chromium/device/gamepad/GamepadDevice;
    if-nez v0, :cond_0

    .line 310
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/device/gamepad/GamepadDevice;->clearData()V

    goto :goto_1

    .line 316
    .end local v0    # "gamepadDevice":Lorg/chromium/device/gamepad/GamepadDevice;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    return-void
.end method

.method private unregisterGamepad(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->getDeviceById(I)Lorg/chromium/device/gamepad/GamepadDevice;

    move-result-object v0

    .line 233
    .local v0, "gamepadDevice":Lorg/chromium/device/gamepad/GamepadDevice;
    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/device/gamepad/GamepadDevice;->getIndex()I

    move-result v1

    .line 235
    .local v1, "index":I
    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->mGamepadDevices:[Lorg/chromium/device/gamepad/GamepadDevice;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method

.method static updateGamepadData(J)V
    .locals 2
    .param p0, "webGamepadsPtr"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->getInstance()Lorg/chromium/device/gamepad/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->grabGamepadData(J)V

    .line 283
    return-void
.end method
