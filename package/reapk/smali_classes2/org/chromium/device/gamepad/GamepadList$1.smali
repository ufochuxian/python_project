.class Lorg/chromium/device/gamepad/GamepadList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/device/gamepad/GamepadList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/device/gamepad/GamepadList;


# direct methods
.method constructor <init>(Lorg/chromium/device/gamepad/GamepadList;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lorg/chromium/device/gamepad/GamepadList$1;->this$0:Lorg/chromium/device/gamepad/GamepadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList$1;->this$0:Lorg/chromium/device/gamepad/GamepadList;

    invoke-static {v0, p1}, Lorg/chromium/device/gamepad/GamepadList;->access$200(Lorg/chromium/device/gamepad/GamepadList;I)V

    .line 54
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList$1;->this$0:Lorg/chromium/device/gamepad/GamepadList;

    invoke-static {v0, p1}, Lorg/chromium/device/gamepad/GamepadList;->access$000(Lorg/chromium/device/gamepad/GamepadList;I)V

    .line 44
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList$1;->this$0:Lorg/chromium/device/gamepad/GamepadList;

    invoke-static {v0, p1}, Lorg/chromium/device/gamepad/GamepadList;->access$100(Lorg/chromium/device/gamepad/GamepadList;I)V

    .line 49
    return-void
.end method
