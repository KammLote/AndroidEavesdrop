.class public final enum Lcom/google/android/gms/internal/tv;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/tv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcfI:Lcom/google/android/gms/internal/tv;

.field public static final enum zzcfJ:Lcom/google/android/gms/internal/tv;

.field public static final enum zzcfK:Lcom/google/android/gms/internal/tv;

.field public static final enum zzcfL:Lcom/google/android/gms/internal/tv;

.field private static final synthetic zzcfM:[Lcom/google/android/gms/internal/tv;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/tv;

    const-string v1, "Overwrite"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/tv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/tv;->zzcfI:Lcom/google/android/gms/internal/tv;

    new-instance v0, Lcom/google/android/gms/internal/tv;

    const-string v1, "Merge"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/tv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/tv;->zzcfJ:Lcom/google/android/gms/internal/tv;

    new-instance v0, Lcom/google/android/gms/internal/tv;

    const-string v1, "AckUserWrite"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/tv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/tv;->zzcfK:Lcom/google/android/gms/internal/tv;

    new-instance v0, Lcom/google/android/gms/internal/tv;

    const-string v1, "ListenComplete"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/tv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/tv;->zzcfL:Lcom/google/android/gms/internal/tv;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/tv;

    sget-object v1, Lcom/google/android/gms/internal/tv;->zzcfI:Lcom/google/android/gms/internal/tv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/tv;->zzcfJ:Lcom/google/android/gms/internal/tv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/tv;->zzcfK:Lcom/google/android/gms/internal/tv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/tv;->zzcfL:Lcom/google/android/gms/internal/tv;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/tv;->zzcfM:[Lcom/google/android/gms/internal/tv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/tv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/tv;->zzcfM:[Lcom/google/android/gms/internal/tv;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/tv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/tv;

    return-object v0
.end method
