.class final Lcom/google/android/gms/internal/rw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcdI:Lcom/google/android/gms/internal/qr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rw;->zzcdI:Lcom/google/android/gms/internal/qr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rw;->zzcdI:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->interrupt()V

    return-void
.end method
