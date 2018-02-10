.class public Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private courseAge:Ljava/lang/String;

.field private courseId:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field private taskPostion:I

.field private taskType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->resourceId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->courseId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskPostion:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskType:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->courseAge:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getCourseAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCourseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->courseId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskPostion()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskPostion:I

    return v0
.end method

.method public getTaskType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskType:Ljava/lang/String;

    return-object v0
.end method

.method public setCourseAge(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    .locals 0
    .param p1, "courseAge"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->courseAge:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public setCourseId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    .locals 0
    .param p1, "courseId"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->courseId:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public setResourceId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->resourceId:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public setTaskId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskId:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public setTaskPostion(I)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    .locals 0
    .param p1, "taskPostion"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskPostion:I

    .line 75
    return-object p0
.end method

.method public setTaskType(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    .locals 0
    .param p1, "taskType"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskType:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubCourseTicket{resourceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", courseId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskPostion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskPostion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", courseAge=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->courseAge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->resourceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->courseId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskPostion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->taskType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->courseAge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return-void
.end method
