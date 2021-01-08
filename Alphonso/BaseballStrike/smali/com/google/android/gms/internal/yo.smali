.class final Lcom/google/android/gms/internal/yo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private synthetic zzcjs:Lcom/google/android/gms/internal/yn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/yn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yo;->zzcjs:Lcom/google/android/gms/internal/yn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/yo;->zzcjs:Lcom/google/android/gms/internal/yn;

    iget-object v0, v0, Lcom/google/android/gms/internal/yn;->zzcjr:Lcom/google/android/gms/internal/yl;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/yl;->zzf(Ljava/lang/Throwable;)V

    return-void
.end method
