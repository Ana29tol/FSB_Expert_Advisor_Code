//+--------------------------------------------------------------------+
//| Copyright:  (C) 2016 Forex Software Ltd.                           |
//| Website:    http://forexsb.com/                                    |
//| Support:    http://forexsb.com/forum/                              |
//| License:    Proprietary under the following circumstances:         |
//|                                                                    |
//| This code is a part of Forex Strategy Builder. It is free for      |
//| use as an integral part of Forex Strategy Builder.                 |
//| One can modify it in order to improve the code or to fit it for    |
//| personal use. This code or any part of it cannot be used in        |
//| other applications without a permission.                           |
//| The contact information cannot be changed.                         |
//|                                                                    |
//| NO LIABILITY FOR CONSEQUENTIAL DAMAGES                             |
//|                                                                    |
//| In no event shall the author be liable for any damages whatsoever  |
//| (including, without limitation, incidental, direct, indirect and   |
//| consequential damages, damages for loss of business profits,       |
//| business interruption, loss of business information, or other      |
//| pecuniary loss) arising out of the use or inability to use this    |
//| product, even if advised of the possibility of such damages.       |
//+--------------------------------------------------------------------+

#property copyright "Copyright (C) 2016 Forex Software Ltd."
#property link      "http://forexsb.com"
#property version   "3.00"
#property strict

#include <Forexsb.com/Enumerations.mqh>
#include <Forexsb.com/IndicatorSlot.mqh>
#include <Forexsb.com/Strategy.mqh>
#include <Forexsb.com/IndicatorManager.mqh>
//## Import Start

class StrategyManager
  {
public:
   Strategy         *GetStrategy(void);
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
Strategy *StrategyManager::GetStrategy(void)
  {
    IndicatorManager *indicatorManager=new IndicatorManager();

    Strategy *strategy = new Strategy(0, 0); //##STRATEGY_CREATION_CODE##

    delete indicatorManager;

    return strategy;
  }
//+------------------------------------------------------------------+
